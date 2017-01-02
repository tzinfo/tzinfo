module TZInfo
  # Raised if no offsets have been defined when calling period_for_utc or
  # periods_for_local. Indicates an error in the timezone data.
  class NoOffsetsDefined < StandardError
  end

  # Represents a data timezone defined by a set of offsets and a set
  # of transitions.
  #
  # @private
  class TransitionDataTimezoneInfo < DataTimezoneInfo #:nodoc:

    # Constructs a new TransitionDataTimezoneInfo with its identifier.
    def initialize(identifier)
      super(identifier)
      @offsets = {}
      @transitions = []
      @previous_offset = nil
      @transitions_index = nil
    end

    # Defines a offset. The id uniquely identifies this offset within the
    # timezone. utc_offset and std_offset define the offset in seconds of
    # standard time from UTC and daylight savings from standard time
    # respectively. abbreviation describes the timezone offset (e.g. GMT, BST,
    # EST or EDT).
    #
    # The first offset to be defined is treated as the offset that applies
    # until the first transition. This will usually be in Local Mean Time (LMT).
    #
    # ArgumentError will be raised if the id is already defined.
    def offset(id, utc_offset, std_offset, abbreviation)
      raise ArgumentError, 'Offset already defined' if @offsets.has_key?(id)

      offset = TimezoneOffset.new(utc_offset, std_offset, abbreviation)
      @offsets[id] = offset
      @previous_offset = offset unless @previous_offset
    end

    # Defines a transition occuring in a given year and month.
    #
    # offset_id refers to the id of a defined offset.
    #
    # timestamp gives the UTC time of the transition as an Integer number of
    # seconds since 1970-01-01.
    #
    # The reserved1 and reserved2 parameters should be left unset. They relate
    # to earlier versions of TZInfo where transitions could be defined as
    # DateTimes (because Time had a limited range on some platforms). They are
    # retained because TZInfo::Data expects to be able to call a method with 6
    # parameters.
    #
    # Transitions must be defined in chronological order.
    #
    # ArgumentError will be raised if a transition is added out of order, the
    # offset_id has not previously been defined or if reserved1 is non-nil and
    # reserved2 is nil (this indicates a transition defined solely as a DateTime
    # in code pre-dating the first TZInfo::Data release).
    def transition(year, month, offset_id, timestamp, reserved1 = nil, reserved2 = nil)
      offset = @offsets[offset_id]
      raise ArgumentError, 'Offset not found' unless offset

      # DateTime-only transitions used to be specified using the 4th and 5th
      # parameters (numerator_or_timestamp and denominator_or_numerator) used
      # as a numerator and denominator.
      raise ArgumentError, 'DateTime-only transitions are not supported' if reserved1 && !reserved2

      if @transitions_index
        if year < @last_year || (year == @last_year && month < @last_month)
          raise ArgumentError, 'Transitions must be increasing date order'
        end

        # Record the position of the first transition with this index.
        index = transition_index(year, month)
        @transitions_index[index] ||= @transitions.length

        # Fill in any gaps
        (index - 1).downto(0) do |i|
          break if @transitions_index[i]
          @transitions_index[i] = @transitions.length
        end
      else
        @transitions_index = [@transitions.length]
        @start_year = year
        @start_month = month
      end

      @transitions << TimezoneTransition.new(offset, @previous_offset, timestamp)
      @last_year = year
      @last_month = month
      @previous_offset = offset
    end

    # Returns the TimezonePeriod for the given Timestamp. The Timestamp must
    # have a specified utc_offset.
    #
    # Raises ArgumentError if timestamp is nil or does not have a specified
    # utc_offset.
    #
    # Raises NoOffsetsDefined if no offsets have been defined.
    def period_for(timestamp)
      raise ArgumentError, 'timestamp must not be nil' unless timestamp
      raise ArgumentError, 'timestamp must have a specified utc_offset' unless timestamp.utc_offset

      unless @transitions.empty?
        time = timestamp.to_time.utc
        index = transition_index(time.year, time.mon)

        start_transition = nil
        start = transition_before_end(index)
        if start
          start.downto(0) do |i|
            if @transitions[i].at <= timestamp
              start_transition = @transitions[i]
              break
            end
          end
        end

        end_transition = nil
        start = transition_after_start(index)
        if start
          start.upto(@transitions.length - 1) do |i|
            if @transitions[i].at > timestamp
              end_transition = @transitions[i]
              break
            end
          end
        end

        if start_transition || end_transition
          TimezonePeriod.new(start_transition, end_transition)
        else
          # Won't happen since there are transitions. Must always find one
          # transition that is either >= or < the specified time.
          raise 'No transitions found in search'
        end
      else
        raise NoOffsetsDefined, 'No offsets have been defined' unless @previous_offset
        TimezonePeriod.new(nil, nil, @previous_offset)
      end
    end

    # Returns an array containing the valid TimezonePeriods for the given local
    # Timestamp. The Timestamp must have an unspecified utc_offset. The results
    # returned are ordered by increasing UTC start date. An empty array is
    # returned if no periods are found for the given time.
    #
    # Raises ArgumentError if local_timestamp is nil, or has a specified
    # utc_offset.
    #
    # Raises NoOffsetsDefined if no offsets have been defined.
    def periods_for_local(local_timestamp)
      raise ArgumentError, 'local_timestamp must not be nil' unless local_timestamp
      raise ArgumentError, 'local_timestamp must have an unspecified utc_offset' if local_timestamp.utc_offset

      unless @transitions.empty?
        local_time = local_timestamp.to_time
        index = transition_index(local_time.year, local_time.mon)

        result = []

        start_index = transition_after_start(index - 1)
        if start_index && @transitions[start_index].absolute_local_end_at > local_timestamp
          if start_index > 0
            if @transitions[start_index - 1].absolute_local_start_at <= local_timestamp
              result << TimezonePeriod.new(@transitions[start_index - 1], @transitions[start_index])
            end
          else
            result << TimezonePeriod.new(nil, @transitions[start_index])
          end
        end

        end_index = transition_before_end(index + 1)

        if end_index
          start_index = end_index unless start_index

          start_index.upto(transition_before_end(index + 1)) do |i|
            if @transitions[i].absolute_local_start_at <= local_timestamp
              if i + 1 < @transitions.length
                if @transitions[i + 1].absolute_local_end_at > local_timestamp
                  result << TimezonePeriod.new(@transitions[i], @transitions[i + 1])
                end
              else
                result << TimezonePeriod.new(@transitions[i], nil)
              end
            end
          end
        end

        result
      else
        raise NoOffsetsDefined, 'No offsets have been defined' unless @previous_offset
        [TimezonePeriod.new(nil, nil, @previous_offset)]
      end
    end

    # Returns an Array of TimezoneTransition instances representing the times
    # where the UTC offset of the timezone changes.
    #
    # Transitions are returned up to a given Timestamp (to_timestamp).
    #
    # A from Timestamp may also be supplied using the from_timestamp parameter.
    # If from_timestamp is not nil, only transitions from that time will be
    # returned.
    #
    # Comparisons with to_timestamp are exclusive. Comparisons with from are
    # inclusive. If a transition falls precisely on to_timestamp, it will be
    # excluded. If a transition falls on from_timestamp, it will be included.
    #
    # Transitions returned are ordered by when they occur, from earliest to
    # latest.
    #
    # If from_timestamp is specified and to_timestamp is not greater than
    # from_timestamp, then transitions_up_to raises an ArgumentError exception.
    def transitions_up_to(to_timestamp, from_timestamp = nil)
      raise ArgumentError, 'to_timestamp must not be nil' unless to_timestamp
      raise ArgumentError, 'to_timestamp must have a specified utc_offset' unless to_timestamp.utc_offset

      if from_timestamp
        raise ArgumentError, 'from_timestamp must have a specified utc_offset' unless from_timestamp.utc_offset
        raise ArgumentError, 'to_timestamp must be greater than from_timestamp' if to_timestamp <= from_timestamp
      end

      unless @transitions.empty?
        if from_timestamp
          from_time = from_timestamp.to_time.utc
          from_index = transition_after_start(transition_index(from_time.year, from_time.mon))

          if from_index
            while from_index < @transitions.length && @transitions[from_index].at < from_timestamp
              from_index += 1
            end

            if from_index >= @transitions.length
              return []
            end
          else
            # from is later than last transition.
            return []
          end
        else
          from_index = 0
        end

        to_time = to_timestamp.to_time.utc
        to_index = transition_before_end(transition_index(to_time.year, to_time.mon))

        if to_index
          while to_index >= 0 && @transitions[to_index].at >= to_timestamp
            to_index -= 1
          end

          if to_index < 0
            return []
          end
        else
          # to is earlier than first transition.
          return []
        end

        @transitions[from_index..to_index]
      else
        []
      end
    end

    private
      # Returns the index into the @transitions_index array for a given year
      # and month.
      def transition_index(year, month)
        index = (year - @start_year) * 2
        index += 1 if month > 6
        index -= 1 if @start_month > 6
        index
      end

      # Returns the index into @transitions of the first transition that occurs
      # on or after the start of the given index into @transitions_index.
      # Returns nil if there are no such transitions.
      def transition_after_start(index)
        if index >= @transitions_index.length
          nil
        else
          index = 0 if index < 0
          @transitions_index[index]
        end
      end

      # Returns the index into @transitions of the first transition that occurs
      # before the end of the given index into @transitions_index.
      # Returns nil if there are no such transitions.
      def transition_before_end(index)
        index = index + 1

        if index <= 0
          nil
        elsif index >= @transitions_index.length
          @transitions.length - 1
        else
          @transitions_index[index] - 1
        end
      end
  end
end
