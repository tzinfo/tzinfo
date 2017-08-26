module TZInfo
  # Represents a data timezone defined by a list of transitions or a constantly
  # applied offset.
  #
  # @private
  class TransitionDataTimezoneInfo < DataTimezoneInfo #:nodoc:

    # The list of transitions as a frozen Array of TimezoneTransition instances
    # (nil if there are no transitions and the timezone observes a constant
    # offset).
    attr_reader :transitions

    # The offset constantly observed as a TimezoneOffset (nil if there are
    # transitions).
    attr_reader :constant_offset

    # Constructs a new TransitionDataTimezoneInfo with its identifier and either
    # an Array of TimezoneTransitions or a TimezoneOffset that is constantly
    # observed.
    #
    # A reference to the passed in Array or TimezoneOffset will be retained.
    #
    # Transitions in the array must be in ascending timestamp order.
    #
    # Raises ArgumentError if transitions_or_constant_offset is an empty Array
    # or not an Array or TimezoneOffset.
    def initialize(identifier, transitions_or_constant_offset)
      super(identifier)

      if transitions_or_constant_offset.kind_of?(Array)
        raise ArgumentError, 'transitions_or_constant_offset must not be an empty Array' if transitions_or_constant_offset.empty?
        @transitions = transitions_or_constant_offset.freeze
        @constant_offset = nil
      elsif transitions_or_constant_offset.kind_of?(TimezoneOffset)
        @transitions = nil
        @constant_offset = transitions_or_constant_offset
      else
        raise ArgumentError, 'transitions_or_constant_offset must be a non-empty Array or a TimezoneOffset'
      end
    end

    # Returns the TimezonePeriod for the given Timestamp. The Timestamp must
    # have a specified utc_offset.
    #
    # Raises ArgumentError if timestamp is nil or does not have a specified
    # utc_offset.
    def period_for(timestamp)
      raise ArgumentError, 'timestamp must not be nil' unless timestamp
      raise ArgumentError, 'timestamp must have a specified utc_offset' unless timestamp.utc_offset

      if @constant_offset
        TimezonePeriod.new(nil, nil, @constant_offset)
      else
        timestamp_value = timestamp.value

        index = find_minimum_transition {|t| t.timestamp_value >= timestamp_value }

        if index
          transition = @transitions[index]

          if transition.timestamp_value == timestamp_value
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

      if @constant_offset
        [TimezonePeriod.new(nil, nil, @constant_offset)]
      else
        local_timestamp_value = local_timestamp.value
        latest_possible_utc_value = local_timestamp_value + 86400
        earliest_possible_utc_value = local_timestamp_value - 86400

        # Find the index of the first transition that occurs after a latest
        # possible UTC representation of the local timestamp and then search
        # backwards until an earliest possible UTC representation.

        index = find_minimum_transition {|t| t.timestamp_value >= latest_possible_utc_value }

        # No transitions after latest_possible_utc_value, set to max index + 1
        # to search backwards including the period after the last transition
        index = @transitions.length unless index

        result = []

        index.downto(0) do |i|
          start_transition = i > 0 ? @transitions[i - 1] : nil
          end_transition = @transitions[i]
          offset = start_transition ? start_transition.offset : end_transition.previous_offset
          utc_timestamp_value = local_timestamp_value - offset.utc_total_offset

          # It is not necessary to compare the sub-seconds because a timestamp
          # is in the period if is >= the start transition (sub-seconds would
          # make == become >) and if it is < the end transition (which
          # sub-seconds cannot affect).
          if (!start_transition || utc_timestamp_value >= start_transition.timestamp_value) && (!end_transition || utc_timestamp_value < end_transition.timestamp_value)
            result << TimezonePeriod.new(start_transition, end_transition)
          elsif end_transition && end_transition.timestamp_value < earliest_possible_utc_value
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

      if @constant_offset
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
      transition_timestamp_value = transition.timestamp_value
      timestamp_value = timestamp.value
      transition_timestamp_value > timestamp_value || transition_timestamp_value == timestamp_value && timestamp.sub_second == 0
    end
  end
end
