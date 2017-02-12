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

    # Defines a transition from to a defined offset.
    #
    # The unused1 and unused2 parameters are not used and should be set to nil.
    # Old versions of TZInfo required these parameters to be set to the year and
    # month of the transition. The parameters are retained for compatibility
    # with released versions of TZInfo::Data.
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
    # Transitions must be defined in chronological order. The timestamp
    # parameter must be greater than the last transition to be defined.
    #
    # ArgumentError will be raised if a transition is added out of order, the
    # offset_id has not previously been defined or if reserved1 is non-nil and
    # reserved2 is nil (this indicates a transition defined solely as a DateTime
    # in code pre-dating the first TZInfo::Data release).
    def transition(unused1, unused2, offset_id, timestamp, reserved1 = nil, reserved2 = nil)
      offset = @offsets[offset_id]
      raise ArgumentError, 'Offset not found' unless offset

      # DateTime-only transitions used to be specified using the 4th and 5th
      # parameters (numerator_or_timestamp and denominator_or_numerator) used
      # as a numerator and denominator.
      raise ArgumentError, 'DateTime-only transitions are not supported' if reserved1 && !reserved2

      raise ArgumentError, 'Transitions must be increasing date order' if !@transitions.empty? && @transitions.last.timestamp >= timestamp

      @transitions << TimezoneTransition.new(offset, @previous_offset, timestamp)
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

      if @transitions.empty?
        raise NoOffsetsDefined, 'No offsets have been defined' unless @previous_offset
        TimezonePeriod.new(nil, nil, @previous_offset)
      else
        timestamp = timestamp.value

        index = find_minimum_transition {|t| t.timestamp >= timestamp }

        if index
          transition = @transitions[index]

          if transition.timestamp == timestamp
            # timestamp occurs within the second of the found transition, so is
            # the transition that starts the period.
            start_transition = transition
            end_transition = @transitions[index + 1]
          else
            # timestamp occurs before the second of the found transition, so is
            # the transition that ends the period.
            start_transition = index == 0 ? nil : @transitions[index - 1]
            end_transition = transition
          end
        else
          start_transition = @transitions.last
          end_transition = nil
        end

        TimezonePeriod.new(start_transition, end_transition)
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

      if @transitions.empty?
        raise NoOffsetsDefined, 'No offsets have been defined' unless @previous_offset
        [TimezonePeriod.new(nil, nil, @previous_offset)]
      else
        local_timestamp = local_timestamp.value
        latest_possible_utc = local_timestamp + 86400
        earliest_possible_utc = local_timestamp - 86400

        # Find the index of the first transition that occurs after a latest
        # possible UTC representation of the local timestamp and then search
        # backwards until an earliest possible UTC representation.

        index = find_minimum_transition {|t| t.timestamp >= latest_possible_utc }

        # No transitions after latest_possible_utc, set to max index + 1 to
        # search backwards including the period after the last transition
        index = @transitions.length unless index

        result = []

        index.downto(0) do |i|
          start_transition = i > 0 ? @transitions[i - 1] : nil
          end_transition = @transitions[i]
          offset = start_transition ? start_transition.offset : end_transition.previous_offset
          utc_timestamp = local_timestamp - offset.utc_total_offset

          # It is not necessary to compare the sub-seconds because a timestamp
          # is in the period if is >= the start transition (sub-seconds would
          # make == become >) and if it is < the end transition (which
          # sub-seconds cannot affect).
          if (!start_transition || utc_timestamp >= start_transition.timestamp) && (!end_transition || utc_timestamp < end_transition.timestamp)
            result << TimezonePeriod.new(start_transition, end_transition)
          elsif end_transition && end_transition.timestamp < earliest_possible_utc
            break
          end
        end

        result.reverse!
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

      if @transitions.empty?
        []
      else
        if from_timestamp
          from_index = find_minimum_transition {|t| transition_on_or_after_to_timestamp?(t, from_timestamp) }
          return [] unless from_index
        else
          from_index = 0
        end

        to_index = find_minimum_transition {|t| transition_on_or_after_to_timestamp?(t, to_timestamp) }

        if to_index
          return [] if to_index < 1
          to_index -= 1
        else
          to_index = -1
        end

        @transitions[from_index..to_index]
      end
    end

    private

    # Array#bsearch_index was added in Ruby 2.3.0. Use bsearch_index to find
    # transitions if it is available, otherwise use a Ruby implementation.
    if [].respond_to?(:bsearch_index)
      # Calls bsearch_index on @transitions.
      def find_minimum_transition(&block)
        @transitions.bsearch_index(&block)
      end
    else
      # A Ruby implementation of the find-minimum mode of Array#bsearch_index.
      def find_minimum_transition
        low = 0
        high = @transitions.length
        satisfied = false

        while low < high do
          mid = (low + high).div(2)
          if yield @transitions[mid]
            satisfied = true
            high = mid
          else
            low = mid + 1
          end
        end

        satisfied ? low : nil
      end
    end

    # Determines if a transition occurs at or after a given Timestamp,
    # considering the Timestamp sub_second.
    def transition_on_or_after_to_timestamp?(transition, timestamp)
      transition_timestamp = transition.timestamp
      timestamp_value = timestamp.value
      transition_timestamp > timestamp_value || transition_timestamp == timestamp_value && timestamp.sub_second == 0
    end
  end
end
