# frozen_string_literal: true

module TZInfo
  # A subclass of Time used to represent local times. LocalTime holds a
  # reference to the related TimezonePeriod and overrides various methods to
  # return results appropriate for the TimezonePeriod. Certain operations will
  # clear the associated TimezonePeriod. Once the TimezonePeriod has been
  # cleared, LocalTime behaves identically to Time.
  class LocalTime < Time
    include Localized

    # The TimezonePeriod associated with this instance.
    attr_reader :period

    # Makes this LocalTime as a local time with the UTC offset of a given
    # TimezonePeriod and sets the associated TimezonePeriod.
    #
    # Returns self.
    #
    # Raises ArgumentError if period is nil.
    def localize(period)
      raise ArgumentError, 'period must not be nil' unless period
      localtime(period.utc_total_offset)
      @period = period
      self
    end

    # Overridden version of Time#dst? that returns the result of calling dst? on
    # the associated TimezonePeriod.
    def dst?
      p = period
      p ? p.dst? : super
    end
    alias_method :isdst, :dst?

    # Overridden version of Time#gmtime that clears the associated
    # TimezonePeriod.
    def gmtime
      super
      @period = nil
      self
    end

    # Overridden version of Time#localtime that clears the associated
    # TimezonePeriod.
    def localtime(*args)
      super
      @period = nil
      self
    end

    # Overridden version of Time#round that returns a LocalTime, preserving the
    # associated TimezonePeriod.
    def round(ndigits = 0)
      if_period(super) {|p,t| self.class.at(t.to_i, t.subsec * 1_000_000).localize(p) }
    end

    # Overridden version of Time#to_a. The isdst and zone elements of the array
    # are set according to the associated TimezonePeriod.
    def to_a
      if_period(super) do |p,a|
        a[8] = p.dst?
        a[9] = p.abbreviation.to_s
        a
      end
    end

    # Overridden version of Time#utc that clears the associated TimezonePeriod.
    def utc
      super
      @period = nil
      self
    end

    # Overridden version of Time#zone that returns the result of converting
    # the abbreviation of the associated TimezonePeriod to a String.
    def zone
      p = period
      p ? p.abbreviation.to_s : super
    end

    # Overridden version of Time#to_datetime that returns a LocalDateTime,
    # preserving the associated TimezonePeriod.
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
