module TZInfo
  # A TimezoneTransition defined by as integer timestamp, as a rational to
  # create a DateTime or as both.
  #
  # @private
  class TimezoneTransitionDefinition < TimezoneTransition #:nodoc:
    # The transition time as an Integer timestamp.
    attr_reader :timestamp
    protected :timestamp

    # Creates a new TimezoneTransitionDefinition with the given offset,
    # previous_offset (both TimezoneOffset instances) and UTC time specified
    # as an Integer number of seconds since 1970-01-01.
    def initialize(offset, previous_offset, timestamp)
      super(offset, previous_offset)
      @timestamp = timestamp
      @at = nil
    end

    # A TimeOrDateTime instance representing the UTC time when this transition
    # occurs.
    def at
      # Thread-safety: It is possible that the value of @at may be calculated
      # multiple times in concurrently executing threads. It is not worth the
      # overhead of locking to ensure that @at is only calculated once.

      @at ||= TimeOrDateTime.new(@timestamp)
    end

    # Returns true if this TimezoneTransitionDefinition is equal to the given
    # TimezoneTransitionDefinition. Two TimezoneTransitionDefinition instances
    # are considered to be equal by eql? if offset, previous_offset,
    # numerator_or_time and denominator are all equal.
    def eql?(ttd)
      ttd.kind_of?(TimezoneTransitionDefinition) &&
        offset == ttd.offset && previous_offset == ttd.previous_offset &&
        timestamp == ttd.timestamp
    end

    # Returns a hash of this TimezoneTransitionDefinition instance.
    def hash
      @offset.hash ^ @previous_offset.hash ^ @timestamp.hash
    end
  end
end
