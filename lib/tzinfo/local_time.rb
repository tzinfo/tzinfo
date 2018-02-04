# frozen_string_literal: true

module TZInfo
  # A subclass of `Time` used to represent local times. {LocalTime} holds a
  # reference to the related {TimezonePeriod} and overrides various methods to
  # return results appropriate for the {TimezonePeriod}. Certain operations will
  # clear the associated {TimezonePeriod}. Once the {TimezonePeriod} has been
  # cleared, {LocalTime} behaves identically to `Time`.
  class LocalTime < Time
    include Localized

    class << self
      # Undefine inherited class methods from Time that are not needed.
      public_instance_methods.each do |m|
        if ![:at, :new, :utc].include?(m) && public_instance_method(m).owner == Time.singleton_class
          undef_method(m)
        end
      end
    end

    # @return [TimezonePeriod] the {TimezonePeriod} associated with this
    #   instance.
    attr_reader :period

    # Marks this {LocalTime} as a local time with the UTC offset of a given
    # {TimezonePeriod} and sets the associated {TimezonePeriod}.
    #
    # @param period [TimezonePeriod] the {TimezonePeriod} to use as the offset
    #   and period of this {LocalTime}.
    # @return [LocalTime] `self`.
    # @raise [ArgumentError] if `period` is `nil`.
    def localize(period)
      raise ArgumentError, 'period must be specified' unless period
      localtime(period.utc_total_offset)
      @period = period
      self
    end

    # An overridden version of `Time#dst?` that, if there is an associated
    # {TimezonePeriod}, returns the result of calling {TimezonePeriod#dst? dst?}
    # on that period.
    #
    # @return [Boolean] `true` if daylight savings time is being observed,
    #   otherwise `false`.
    def dst?
      p = period
      p ? p.dst? : super
    end
    alias isdst dst?

    # An overridden version of `Time#gmtime` that clears the associated
    # {TimezonePeriod}.
    #
    # @return [LocalTime] `self`.
    def gmtime
      super
      @period = nil
      self
    end

    # An overridden version of `Time#localtime` that clears the associated
    # {TimezonePeriod}.
    #
    # @return [LocalTime] `self`.
    def localtime(*args)
      super
      @period = nil
      self
    end

    # An overridden version of `Time#round` that, if there is an associated
    # {TimezonePeriod}, returns a {LocalTime} preserving that period.
    #
    # @return [Time] the rounded time.
    def round(ndigits = 0)
      if_period(super) {|p,t| self.class.at(t.to_i, t.subsec * 1_000_000).localize(p) }
    end

    # An overridden version of `Time#to_a`. The `isdst` (index 8) and `zone`
    # (index 9) elements of the array are set according to the associated
    # {TimezonePeriod}.
    #
    # @return [Array] an `Array` representation of the {LocalTime}.
    def to_a
      if_period(super) do |p,a|
        a[8] = p.dst?
        a[9] = p.abbreviation.to_s
        a
      end
    end

    # An overridden version of `Time#utc` that clears the associated
    # {TimezonePeriod}.
    #
    # @return [LocalTime] `self`.
    def utc
      super
      @period = nil
      self
    end

    # An overridden version of `Time#zone` that, if there is an associated
    # {TimezonePeriod}, returns the {TimezonePeriod#abbreviation abbreviation}
    # of that period as a `String`.
    #
    # @return [String] the {TimezonePeriod#abbreviation abbreviation} of the
    #   associated {TimezonePeriod}, or the result from `Time#zone` if there is
    #   no such period.
    def zone
      p = period
      p ? p.abbreviation.to_s : super
    end

    # An overridden version of `Time#to_datetime` that, if there is an
    # associated {TimezonePeriod}, returns a {LocalDateTime} with that period.
    #
    # @return [DateTime] if there is an associated {TimezonePeriod}, a
    #   {LocalDateTime} representation of this {LocalTime}, otherwise a `Time`
    #   representation.
    def to_datetime
      if_period(super) do |p,dt|
        offset = dt.offset
        result = LocalDateTime.jd(dt.jd + dt.day_fraction - offset)
        result = result.new_offset(offset) unless offset == 0
        result.localize(p)
      end
    end
  end
end
