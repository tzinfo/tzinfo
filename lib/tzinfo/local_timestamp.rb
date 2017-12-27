# frozen_string_literal: true

module TZInfo
  # A subclass of {Timestamp} used to represent local times. {LocalTimestamp}
  # holds a reference to the related {TimezonePeriod} and overrides various
  # methods to return results appropriate for the {TimezonePeriod}. Certain
  # operations will clear the associated {TimezonePeriod}. Once the
  # {TimezonePeriod} has been cleared, {LocalTimestamp} behaves identically to
  # {Timestamp}.
  class LocalTimestamp < Timestamp
    include Localized

    # @return [TimezonePeriod] the {TimezonePeriod} associated with this
    #   instance.
    attr_reader :period

    # Creates a new {LocalTimestamp} from a given {Timestamp} and
    # {TimezonePeriod}.
    #
    # @param timestamp [Timestamp] a {Timestamp}.
    # @param period [TimezonePeriod] a {TimezonePeriod} valid at the time of
    #   `timestamp`.
    # @return [LocalTimestamp] a {LocalTimestamp} that has the same {value
    #   value} and {sub_second sub_second} as the `timestamp` parameter, a
    #   {utc_offset utc_offset} equal to the {TimezonePeriod#utc_total_offset
    #   utc_total_offset} of the `period` parameter and {period period} set to
    #   the `period` parameter.
    # @raise [ArgumentError] if timestamp or period are `nil`.
    def self.localize(timestamp, period)
      raise ArgumentError, 'timestamp must be specified' unless timestamp
      raise ArgumentError, 'period must be specified' unless period
      new(timestamp.value, timestamp.sub_second, period.utc_total_offset).localize(period)
    end

    # Sets the associated {TimezonePeriod} of this {LocalTimestamp}.
    #
    # @param period [TimezonePeriod] a {TimezonePeriod} valid at the time and
    #   for the offset of this {LocalTimestamp}.
    # @return [LocalTimestamp] `self`.
    # @raise [ArgumentError] if `period` is `nil`.
    # @raise [ArgumentError] if {utc? self.utc?} is `true`.
    # @raise [ArgumentError] if `period.utc_total_offset` does not equal
    #   `self.utc_offset`.
    def localize(period)
      raise ArgumentError, 'period must be specified' unless period
      raise ArgumentError, 'period.utc_total_offset does not match self.utc_offset' if utc? || utc_offset != period.utc_total_offset
      @period = period
      self
    end

    # An overridden version of {Timestamp#to_time} that, if there is an
    # associated {TimezonePeriod}, returns a {LocalTime} with that period.
    #
    # @return [Time] if there is an associated {TimezonePeriod}, a {LocalTime}
    #   representation of this {LocalTimestamp}, otherwise a `Time`
    #   representation.
    def to_time
      p = period
      if p
        new_time(LocalTime).localize(p)
      else
        super
      end
    end

    # An overridden version of {Timestamp#to_datetime}, if there is an
    # associated {TimezonePeriod}, returns a {LocalDateTime} with that period.
    #
    # @return [DateTime] if there is an associated {TimezonePeriod}, a
    #   {LocalDateTime} representation of this {LocalTimestamp}, otherwise a
    #   `DateTime` representation.
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
