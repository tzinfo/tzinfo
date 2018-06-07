# frozen_string_literal: true

module TZInfo
  # Represents an offset from UTC observed by a time zone.
  class TimezoneOffset
    # Returns the base offset from UTC in seconds (`current_utc_offset -
    # std_offset`). This does not include any adjustment made for daylight
    # savings time and will typically remain constant throughout the year.
    #
    # To obtain the currently observed offset from UTC, including the effect of
    # daylight savings time, use {current_utc_offset} instead.
    #
    # If you require accurate {base_utc_offset} values, you should install the
    # tzinfo-data gem and set {DataSources::RubyDataSource} as the {DataSource}.
    # This is because zoneinfo files do not include the value of
    # {base_utc_offset}. When using {DataSources::ZoneinfoDataSource}, the
    # {base_utc_offset} will be derived from changes to the observed UTC offset
    # and DST status.
    #
    # If you require {base_utc_offset} to be accurate, install the tzinfo-data
    # gem and set {DataSources::RubyDataSource} as the {DataSource}.
    #
    # @return [Integer] The base offset from UTC in seconds.
    attr_reader :base_utc_offset
    alias utc_offset base_utc_offset

    # Returns the offset from the time zone's standard time in seconds
    # (`current_utc_offset - base_utc_offset`). Zero when daylight savings time
    # is not in effect. Non-zero (usually 3600 = 1 hour) if daylight savings is
    # being observed.
    #
    # If you require accurate {std_offset} values, you should install the
    # tzinfo-data gem and set {DataSources::RubyDataSource} as the {DataSource}.
    # This is because zoneinfo files do not include the value of {std_offset}.
    # When using {DataSources::ZoneinfoDataSource}, the {std_offset} will be
    # derived from changes to the observed UTC offset and DST status.
    #
    # @return [Integer] the offset from the time zone's standard time in
    #   seconds.
    attr_reader :std_offset

    # Returns the currently observed offset from UTC in seconds
    # (`base_utc_offset + std_offset`). This includes adjustments made for
    # daylight savings time.
    #
    # @return [Integer] the currently observed offset from UTC in seconds.
    attr_reader :current_utc_offset
    alias utc_total_offset current_utc_offset

    # The abbreviation that identifies this offset. For example GMT
    # (Greenwich Mean Time) or BST (British Summer Time) for Europe/London.
    #
    # @return [String] The abbreviation that identifies this offset.
    attr_reader :abbreviation

    # Initializes a new {TimezoneOffset}.
    #
    # {TimezoneOffset} instances should not normally be constructed manually.
    #
    # The passed in `abbreviation` instance will be frozen.
    #
    # @param base_utc_offset [Integer] the base offset from UTC in seconds.
    # @param std_offset [Integer] the offset from standard time in seconds.
    # @param abbreviation [String] the abbreviation identifying the offset.
    def initialize(base_utc_offset, std_offset, abbreviation)
      @base_utc_offset = base_utc_offset
      @std_offset = std_offset
      @abbreviation = abbreviation.freeze

      @current_utc_offset = @base_utc_offset + @std_offset
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
        base_utc_offset == toi.base_utc_offset && std_offset == toi.std_offset && abbreviation == toi.abbreviation
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
      [@base_utc_offset, @std_offset, @abbreviation].hash
    end

    # @return [String] the internal object state as a programmer-readable
    #   `String`.
    def inspect
      "#<#{self.class}: @base_utc_offset=#{@base_utc_offset}, @std_offset=#{@std_offset}, @abbreviation=#{@abbreviation}>"
    end
  end
end
