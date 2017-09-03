module TZInfo
  # A TimezonePeriod instance represents a period of time in a timezone where
  # the same offset from UTC applies.
  #
  # TimezonePeriod is not instantiated directly. Subclasses should override
  # start_transition, end_transition, eql?, == and hash.
  class TimezonePeriod
    # The TimezoneOffset for this period.
    attr_reader :offset

    # Initializes a new TimezonePeriod with a TimezoneOffset.
    #
    # Raises ArgumentError if offset is nil.
    #
    # TimezonePeriod instances should not normally be constructed manually.
    def initialize(offset)
      raise ArgumentError, 'offset must not be nil' unless offset
      @offset = offset
    end

    # The TimezoneTransition that defines the start of this TimezonePeriod
    # (may be nil if unbounded).
    def start_transition
      raise_not_implemented(:start_transition)
    end

    # The TimezoneTransition that defines the end of this TimezonePeriod
    # (may be nil if unbounded).
    def end_transition
      raise_not_implemented(:end_transition)
    end

    # Base offset of the timezone from UTC (seconds).
    def utc_offset
      @offset.utc_offset
    end

    # Offset from the local time where daylight savings is in effect (seconds).
    # E.g.: utc_offset could be -5 hours. Normally, std_offset would be 0.
    # During daylight savings, std_offset would typically become +1 hours.
    def std_offset
      @offset.std_offset
    end

    # The identifier of this period, e.g. "GMT" (Greenwich Mean Time) or "BST"
    # (British Summer Time) for "Europe/London". The returned identifier is a
    # symbol.
    def abbreviation
      @offset.abbreviation
    end
    alias :zone_identifier :abbreviation

    # Total offset from UTC (seconds). Equal to utc_offset + std_offset.
    def utc_total_offset
      @offset.utc_total_offset
    end

    # true if daylight savings is in effect for this period; otherwise false.
    def dst?
      @offset.dst?
    end

    # The start time of the period as a UTC Timestamp or nil if the start of the
    # period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def starts_at
      timestamp(start_transition)
    end

    # The end time of the period as a UTC Timestamp or nil if the end of the
    # period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def ends_at
      timestamp(end_transition)
    end

    # The local start time of the period as a LocalTimestamp or nil if the start
    # of the period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_starts_at
      localized_timestamp(start_transition)
    end

    # The local end time of the period as a LocalTimestamp or nil if the end of
    # period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_ends_at
      localized_timestamp(end_transition)
    end

    private

    # Raises a NotImplementedError to indicate that subclasses should override a
    # method.
    def raise_not_implemented(method_name)
      raise NotImplementedError, "Subclasses must override #{method_name}"
    end

    # Returns the Timestamp representing when a TimezoneTransition occurs, or
    # nil if the given transition is nil.
    def timestamp(transition)
      transition ? transition.at : nil
    end

    # Returns a localized Timestamp representing when a TimezoneTransition
    # occurs, or nil if the given transition is nil.
    def localized_timestamp(transition)
      transition ? LocalTimestamp.localize(transition.at, self) : nil
    end
  end
end
