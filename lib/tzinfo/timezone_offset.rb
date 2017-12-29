# frozen_string_literal: true

module TZInfo
  # Represents an offset from UTC observed by a time zone.
  class TimezoneOffset
    # Returns the base offset from UTC in seconds. This does not include any
    # adjustment made for daylight savings time and will typically remain
    # constant throughout the year.
    #
    # @return [Integer] The base offset from UTC in seconds.
    attr_reader :utc_offset

    # Returns the offset from the time zone's standard time in seconds. Zero
    # when daylight savings time is not in effect. Non-zero  (usually 3600 = 1
    # hour) if daylight savings is being observed.
    #
    # @return [Integer] the offset from the time zone's standard time in
    #   seconds.
    attr_reader :std_offset

    # Returns the total offset from UTC in seconds (`utc_offset + std_offset`).
    # This includes adjustments made for daylight savings time.
    #
    # @return [Integer] the total offset from UTC in seconds.
    attr_reader :utc_total_offset

    # The abbreviation that identifies this offset. For example `:GMT`
    # (Greenwich Mean Time) or `:BST` (British Summer Time) for Europe/London.
    #
    # @return [Symbol] The abbreviation that identifies this offset.
    attr_reader :abbreviation

    # Initializes a new {TimezoneOffset}.
    #
    # {TimezoneOffset} instances should not normally be constructed manually.
    #
    # @param utc_offset [Integer] the base offset from UTC in seconds.
    # @param std_offset [Integer] the offset from standard time in seconds.
    # @param abbreviation [Symbol] the abbreviation identifying the offset.
    def initialize(utc_offset, std_offset, abbreviation)
      @utc_offset = utc_offset
      @std_offset = std_offset
      @abbreviation = abbreviation

      @utc_total_offset = @utc_offset + @std_offset
    end

    # Determines if daylight savings is in effect (i.e. if {std_offset} is
    # non-zero).
    #
    # @return [Boolean] `true` if {std_offset} is non-zero, otherwise `false`.
    def dst?
      @std_offset != 0
    end

    # Determines if this {TimezoneOffset} is equal to another instance.
    #
    # @param toi [Object] the instance to test for equality.
    # @return [Boolean] `true` if `toi` is a {TimezoneOffset} with the same
    #   {utc_offset}, {std_offset} and {abbreviation} as this {TimezoneOffset},
    #   otherwise `false`.
    def ==(toi)
      toi.kind_of?(TimezoneOffset) &&
        utc_offset == toi.utc_offset && std_offset == toi.std_offset && abbreviation == toi.abbreviation
    end

    # Determines if this {TimezoneOffset} is equal to another instance.
    #
    # @param toi [Object] the instance to test for equality.
    # @return [Boolean] `true` if `toi` is a {TimezoneOffset} with the same
    #   {utc_offset}, {std_offset} and {abbreviation} as this {TimezoneOffset},
    #   otherwise `false`.
    def eql?(toi)
      self == toi
    end

    # @return [Integer] a hash based on {utc_offset}, {std_offset} and
    #   {abbreviation}.
    def hash
      [@utc_offset, @std_offset, @abbreviation].hash
    end

    # @return [String] the internal object state as a programmer-readable
    #   `String`.
    def inspect
      "#<#{self.class}: @utc_offset=#{@utc_offset}, @std_offset=#{@std_offset}, @abbreviation=#{@abbreviation.inspect}>"
    end
  end
end
