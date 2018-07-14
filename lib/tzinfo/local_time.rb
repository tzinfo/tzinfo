# frozen_string_literal: true

module TZInfo
  # A subclass of `Time` used to represent local times. {LocalTime} holds a
  # reference to the related {TimezoneOffset} and overrides various methods to
  # return results appropriate for the {TimezoneOffset}. Certain operations will
  # clear the associated {TimezoneOffset}. Once the {TimezoneOffset} has been
  # cleared, {LocalTime} behaves identically to `Time`.
  class LocalTime < Time
    include Localized

    # @return [TimezoneOffset] the {TimezoneOffset} associated with this
    #   instance.
    attr_reader :offset_info

    # Marks this {LocalTime} as a local time with the UTC offset of a given
    # {TimezoneOffset} and sets the associated {TimezoneOffset}.
    #
    # @param offset_info [TimezoneOffset] the {TimezoneOffset} to use to set the
    #   offset of this {LocalTime}.
    # @return [LocalTime] `self`.
    # @raise [ArgumentError] if `offset_info` is `nil`.
    def localize(offset_info)
      raise ArgumentError, 'offset_info must be specified' unless offset_info
      localtime(offset_info.current_utc_offset)
      @offset_info = offset_info
      self
    end

    # An overridden version of `Time#dst?` that, if there is an associated
    # {TimezoneOffset}, returns the result of calling {TimezoneOffset#dst? dst?}
    # on that offset.
    #
    # @return [Boolean] `true` if daylight savings time is being observed,
    #   otherwise `false`.
    def dst?
      o = offset_info
      o ? o.dst? : super
    end
    alias isdst dst?

    # An overridden version of `Time#gmtime` that clears the associated
    # {TimezoneOffset}.
    #
    # @return [LocalTime] `self`.
    def gmtime
      super
      @offset_info = nil
      self
    end

    # An overridden version of `Time#localtime` that clears the associated
    # {TimezoneOffset}.
    #
    # @return [LocalTime] `self`.
    def localtime(*args)
      super
      @offset_info = nil
      self
    end

    # An overridden version of `Time#round` that, if there is an associated
    # {TimezoneOffset}, returns a {LocalTime} preserving that period.
    #
    # @return [Time] the rounded time.
    def round(ndigits = 0)
      if_offset_info(super) {|o,t| self.class.at(t.to_i, t.subsec * 1_000_000).localize(o) }
    end

    # An overridden version of `Time#to_a`. The `isdst` (index 8) and `zone`
    # (index 9) elements of the array are set according to the associated
    # {TimezoneOffset}.
    #
    # @return [Array] an `Array` representation of the {LocalTime}.
    def to_a
      if_offset_info(super) do |o,a|
        a[8] = o.dst?
        a[9] = o.abbreviation
        a
      end
    end

    # An overridden version of `Time#utc` that clears the associated
    # {TimezoneOffset}.
    #
    # @return [LocalTime] `self`.
    def utc
      super
      @offset_info = nil
      self
    end

    # An overridden version of `Time#zone` that, if there is an associated
    # {TimezoneOffset}, returns the {TimezoneOffset#abbreviation abbreviation}
    # of that period.
    #
    # @return [String] the {TimezoneOffset#abbreviation abbreviation} of the
    #   associated {TimezoneOffset}, or the result from `Time#zone` if there is
    #   no such period.
    def zone
      o = offset_info
      o ? o.abbreviation : super
    end

    # An overridden version of `Time#to_datetime` that, if there is an
    # associated {TimezoneOffset}, returns a {LocalDateTime} with that period.
    #
    # @return [DateTime] if there is an associated {TimezoneOffset}, a
    #   {LocalDateTime} representation of this {LocalTime}, otherwise a `Time`
    #   representation.
    def to_datetime
      if_offset_info(super) do |o,dt|
        offset = dt.offset
        result = LocalDateTime.jd(dt.jd + dt.day_fraction - offset)
        result = result.new_offset(offset) unless offset == 0
        result.localize(o)
      end
    end
  end
end
