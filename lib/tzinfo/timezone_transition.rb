module TZInfo
  # Represents a transition from one timezone offset to another at a particular
  # date and time.
  class TimezoneTransition
    # The offset this transition changes to (a TimezoneOffset instance).
    attr_reader :offset

    # The offset this transition changes from (a TimezoneOffset instance).
    attr_reader :previous_offset

    # When this transition occurs as an Integer number of seconds since
    # 1970-01-01 00:00:00 UTC ignoring leap seconds (i.e. each day is treated as
    # if it were 86,400 seconds long). Equivalent to the result of calling
    # #value on the Timestamp returned by #at.
    attr_reader :timestamp_value

    # Initializes a new TimezoneTransition with the given offset,
    # previous_offset (both as TimezoneOffset instances) and UTC time specified
    # as an Integer number of seconds since 1970-01-01 00:00:00 UTC ignoring
    # leap seconds, i.e. each day is treated as if it were 86,400 seconds long).
    #
    # TimezoneTransition instances should not normally be constructed manually.
    def initialize(offset, previous_offset, timestamp_value)
      @offset = offset
      @previous_offset = previous_offset
      @timestamp_value = timestamp_value
    end

    # A Timestamp instance representing the UTC time when this transition
    # occurs.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def at
      Timestamp.utc(@timestamp_value)
    end

    # A Timestamp instance representing the local time when this transition
    # causes the previous observance to end (calculated from at using
    # previous_offset).
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_end_at
      at.apply_offset(@previous_offset.utc_total_offset)
    end

    # A Timestamp instance representing the local time when this transition
    # causes the next observance to start (calculated from at using offset).
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_start_at
      at.apply_offset(@offset.utc_total_offset)
    end

    # Returns true if this TimezoneTransition is equal to the given
    # TimezoneTransition. Two TimezoneTransition instances are considered to be
    # equal if offset, previous_offset and timestamp are all equal.
    def ==(tti)
      tti.kind_of?(TimezoneTransition) &&
        offset == tti.offset && previous_offset == tti.previous_offset && timestamp_value == tti.timestamp_value
    end
    alias_method :eql?, :==

    # Returns a hash of this TimezoneTransition instance.
    def hash
      @offset.hash ^ @previous_offset.hash ^ @timestamp_value.hash
    end

    private

    def raise_not_implemented(method_name)
      raise NotImplementedError, "Subclasses must override #{method_name}"
    end
  end
end
