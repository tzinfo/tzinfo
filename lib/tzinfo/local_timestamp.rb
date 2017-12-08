# frozen_string_literal: true

module TZInfo
  # A subclass of Timestamp used to represent local times. LocalTimestamp holds
  # a reference to the related TimezonePeriod and overrides various methods to
  # return results appropriate for the TimezonePeriod. Certain operations will
  # clear the associated TimezonePeriod. Once the TimezonePeriod has been
  # cleared, LocalTimestamp behaves identically to Timestamp.
  class LocalTimestamp < Timestamp
    include Localized

    # The TimezonePeriod associated with this instance.
    attr_reader :period

    # Creates a new LocalTimestamp from a given Timestamp and TimezonePeriod.
    # The value and sub_second of timestamp are copied into the result. The
    # offset of the result is set to the utc_total_offset of of period. The
    # period of the result is set to the period parameter.
    #
    # Raises ArgumentError if timestamp or period are nil.
    def self.localize(timestamp, period)
      raise ArgumentError, 'timestamp must be specified' unless timestamp
      raise ArgumentError, 'period must be specified' unless period
      new(timestamp.value, timestamp.sub_second, period.utc_total_offset).localize(period)
    end

    # Sets the associated TimezonePeriod of this LocalTimestamp.
    #
    # Returns self.
    #
    # Raises ArgumentError if period is nil.
    #
    # Raises ArgumentError if self.utc? is true.
    #
    # Raises ArgumentError if period.utc_total_offset does not equal
    # self.utc_offset.
    def localize(period)
      raise ArgumentError, 'period must be specified' unless period
      raise ArgumentError, 'period.utc_total_offset does not match self.utc_offset' if utc? || utc_offset != period.utc_total_offset
      @period = period
      self
    end

    # Overridden version of Timestamp#to_time that returns a LocalTime,
    # preserving the associated TimezonePeriod.
    def to_time
      p = period
      if p
        new_time(LocalTime).localize(p)
      else
        super
      end
    end

    # Overridden version of Timestamp#to_datetime that returns a LocalDateTime,
    # preserving the associated TimezonePeriod.
    def to_datetime
      p = period
      if p
        new_datetime(LocalDateTime).localize(p)
      else
        super
      end
    end
  end
end
