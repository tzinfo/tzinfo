# frozen_string_literal: true

module TZInfo
  # {TimezonePeriod} represents a period of time for a time zone where the same
  # offset from UTC applies. It provides access to the observed offset, time
  # zone abbreviation, start time and end time.
  #
  # The period of time can be unbounded at the start, end, or both the start
  # and end.
  #
  # @abstract Time zone period data will returned as an instance of one of the
  #  subclasses of {TimezonePeriod}.
  class TimezonePeriod
    # @return [TimezoneOffset] the offset that applies in the period of time.
    attr_reader :offset

    # Initializes a {TimezonePeriod}.
    #
    # @param offset [TimezoneOffset] the offset that is observed for the period
    #   of time.
    # @raise [ArgumentError] if `offset` is `nil`.
    def initialize(offset)
      raise ArgumentError, 'offset must be specified' unless offset
      @offset = offset
    end

    # @return [TimezoneTransition] the transition that defines the start of this
    #   {TimezonePeriod} (`nil` if the start is unbounded).
    def start_transition
      raise_not_implemented(:start_transition)
    end

    # @return [TimezoneTransition] the transition that defines the end of this
    #   {TimezonePeriod} (`nil` if the end is unbounded).
    def end_transition
      raise_not_implemented(:end_transition)
    end

    # Returns the base offset from UTC in seconds. This does not include any
    # adjustment made for daylight savings time and will typically remain
    # constant throughout the year.
    #
    # @return [Integer] The base offset from UTC in seconds.
    def utc_offset
      @offset.utc_offset
    end

    # Returns the offset from the time zone's standard time in seconds. Zero
    # when daylight savings time is not in effect. Non-zero  (usually 3600 = 1
    # hour) if daylight savings is being observed.
    #
    # @return [Integer] the offset from the time zone's standard time in
    #   seconds.
    def std_offset
      @offset.std_offset
    end

    # The abbreviation that identifies this offset. For example `:GMT`
    # (Greenwich Mean Time) or `:BST` (British Summer Time) for Europe/London.
    #
    # @return [Symbol] The abbreviation that identifies this offset.
    def abbreviation
      @offset.abbreviation
    end
    alias zone_identifier abbreviation

    # Returns the total offset from UTC in seconds (`utc_offset + std_offset`).
    # This includes adjustments made for daylight savings time.
    #
    # @return [Integer] the total offset from UTC in seconds.
    def utc_total_offset
      @offset.utc_total_offset
    end

    # Determines if daylight savings is in effect (i.e. if {std_offset} is
    # non-zero).
    #
    # @return [Boolean] `true` if {std_offset} is non-zero, otherwise `false`.
    def dst?
      @offset.dst?
    end

    # Returns the UTC start time of the period or `nil` if the start of the
    # period is unbounded.
    #
    # The result is returned as a {Timestamp}. To obtain the start time as a
    # `Time` or `DateTime`, call either {Timestamp#to_time to_time} or
    # {Timestamp#to_datetime to_datetime} on the result.
    #
    # @return [Timestamp] The UTC start time of the period or `nil` if the start
    #   of the period is unbounded.
    def starts_at
      timestamp(start_transition)
    end

    # Returns the UTC end time of the period or `nil` if the end of the period
    # is unbounded.
    #
    # The result is returned as a {Timestamp}. To obtain the end time as a
    # `Time` or `DateTime`, call either {Timestamp#to_time to_time} or
    # {Timestamp#to_datetime to_datetime} on the result.
    #
    # @return [Timestamp] The UTC end time of the period or `nil` if the end of
    #   the period is unbounded.
    def ends_at
      timestamp(end_transition)
    end

    # Returns the local start time of the period or `nil` if the start of the
    # period is unbounded.
    #
    # The result is returned as a {LocalTimestamp}. To obtain the start time as
    # a `Time` or `DateTime`, call either {LocalTimestamp#to_time to_time} or
    # {LocalTimestamp#to_datetime to_datetime} on the result.
    #
    # @return [LocalTimestamp] The local start time of the period or `nil` if
    #   the start of the period is unbounded.
    def local_starts_at
      localized_timestamp(start_transition)
    end

    # Returns the local end time of the period or `nil` if the end of the period
    # is unbounded.
    #
    # The result is returned as a {LocalTimestamp}. To obtain the end time as a
    # `Time` or `DateTime`, call either {LocalTimestamp#to_time to_time} or
    # {LocalTimestamp#to_datetime to_datetime} on the result.
    #
    # @return [LocalTimestamp] The local end time of the period or `nil` if the
    #   end of the period is unbounded.
    def local_ends_at
      localized_timestamp(end_transition)
    end

    private

    # Raises a {NotImplementedError} to indicate that subclasses should override
    # a method.
    #
    # @raise [NotImplementedError] always.
    def raise_not_implemented(method_name)
      raise NotImplementedError, "Subclasses must override #{method_name}"
    end

    # @param  transition [TimezoneTransition] a transition or `nil`.
    # @return [Timestamp] the {Timestamp} representing when a transition occurs,
    #   or `nil` if the given transition is `nil`.
    def timestamp(transition)
      transition ? transition.at : nil
    end

    # @param transition [TimezoneTransition] a transition or `nil`.
    # @return [LocalTimestamp] a localized {Timestamp} representing when a
    #   transition occurs, or `nil` if the given transition is `nil`.
    def localized_timestamp(transition)
      transition ? LocalTimestamp.localize(transition.at, self) : nil
    end
  end
end
