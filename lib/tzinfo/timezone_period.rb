module TZInfo
  # A period of time in a timezone where the same offset from UTC applies.
  #
  # All the methods that take times accept instances of Time or DateTime as well
  # as Integer timestamps.
  class TimezonePeriod
    # The TimezoneTransition that defines the start of this TimezonePeriod
    # (may be nil if unbounded).
    attr_reader :start_transition

    # The TimezoneTransition that defines the end of this TimezonePeriod
    # (may be nil if unbounded).
    attr_reader :end_transition

    # The TimezoneOffset for this period.
    attr_reader :offset

    # Initializes a new TimezonePeriod.
    #
    # TimezonePeriod instances should not normally be constructed manually.
    def initialize(start_transition, end_transition, offset = nil)
      @start_transition = start_transition
      @end_transition = end_transition

      if offset
        raise ArgumentError, 'Offset specified with transitions' if @start_transition || @end_transition
        @offset = offset
      else
        if @start_transition
          @offset = @start_transition.offset
        elsif @end_transition
          @offset = @end_transition.previous_offset
        else
          raise ArgumentError, 'No offset specified and no transitions to determine it from'
        end
      end
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

    # Total offset from UTC (days). Result is a Rational.
    def utc_total_offset_rational
      OffsetRationals.rational_for_offset(utc_total_offset)
    end

    # The start time of the period as a UTC Timestamp. Make be nil if the period
    # is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def starts_at
      @start_transition ? @start_transition.at : nil
    end

    # The start time of the period as a UTC Timestamp. Make be nil if the period
    # is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def ends_at
      @end_transition ? @end_transition.at : nil
    end

    # The start time of the period as a LocalTimestamp. Make be nil if the
    # period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_starts_at
      @start_transition ? LocalTimestamp.localize(@start_transition.at, self) : nil
    end

    # The end time of the period as a LocalTimestamp. Make be nil if the
    # period is unbounded.
    #
    # To obtain the result as a Time or DateTime, call either to_time or
    # to_datetime on the Timestamp instance that is returned.
    def local_ends_at
      @end_transition ? LocalTimestamp.localize(@end_transition.at, self) : nil
    end

    # true if daylight savings is in effect for this period; otherwise false.
    def dst?
      @offset.dst?
    end

    # Returns true if this TimezonePeriod is equal to p. This compares the
    # start_transition, end_transition and offset using ==.
    def ==(p)
      p.kind_of?(TimezonePeriod) &&
        start_transition == p.start_transition &&
        end_transition == p.end_transition &&
        offset == p.offset
    end

    # Returns true if this TimezonePeriods is equal to p. This compares the
    # start_transition, end_transition and offset using eql?
    def eql?(p)
      p.kind_of?(TimezonePeriod) &&
        start_transition.eql?(p.start_transition) &&
        end_transition.eql?(p.end_transition) &&
        offset.eql?(p.offset)
    end

    # Returns a hash of this TimezonePeriod.
    def hash
      result = @start_transition.hash ^ @end_transition.hash
      result ^= @offset.hash unless @start_transition || @end_transition
      result
    end
  end
end
