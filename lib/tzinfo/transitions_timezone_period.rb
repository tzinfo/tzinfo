module TZInfo
  # An TransitionsTimezonePeriod instance represents a period of time in a
  # timezone where the same offset from UTC applies. The period of time is
  # bounded at at least one end, either having a start transition, end
  # transition or both start and end transitions.
  class TransitionsTimezonePeriod < TimezonePeriod
    # Returns the TimezoneTransition that defines the start of this
    # TimezonePeriod (may be nil if the start is unbounded).
    attr_reader :start_transition

    # Returns the TimezoneTransition that defines the end of this TimezonePeriod
    # (may be nil if the end is unbounded).
    attr_reader :end_transition

    # Initializes a new TransitionsTimezonePeriod with start and end
    # TimezoneTransitions, at least one of which must be specified.
    #
    # Raises ArgumentError if both start_transition and end_transition are nil.
    #
    # TransitionsTimezonePeriod instances should not normally be constructed
    # manually.
    def initialize(start_transition, end_transition)
      if start_transition
        super(start_transition.offset)
      elsif end_transition
        super(end_transition.previous_offset)
      else
        raise ArgumentError, 'At least one of start_transition and end_transition must not be nil'
      end

      @start_transition = start_transition
      @end_transition = end_transition
    end

    # Returns true if this TransitionsTimezonePeriod is equal to p.
    def ==(p)
      p.kind_of?(TransitionsTimezonePeriod) && start_transition == p.start_transition && end_transition == p.end_transition
    end
    alias eql? ==

    # Returns a hash of this TransitionsTimezonePeriod.
    def hash
      [@start_transition, @end_transition].hash
    end
  end
end
