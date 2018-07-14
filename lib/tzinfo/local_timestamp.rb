# frozen_string_literal: true

module TZInfo
  # A subclass of {Timestamp} used to represent local times. {LocalTimestamp}
  # holds a reference to the related {TimezoneOffset} and overrides various
  # methods to return results appropriate for the {TimezoneOffset}. Certain
  # operations will clear the associated {TimezoneOffset}. Once the
  # {TimezoneOffset} has been cleared, {LocalTimestamp} behaves identically to
  # {Timestamp}.
  class LocalTimestamp < Timestamp
    include Localized

    # @return [TimezoneOffset] the {TimezoneOffset} associated with this
    #   instance.
    attr_reader :offset_info

    # Creates a new {LocalTimestamp} from a given {Timestamp} and
    # {TimezoneOffset}.
    #
    # @param timestamp [Timestamp] a {Timestamp}.
    # @param offset_info [TimezoneOffset] a {TimezoneOffset} valid at the time
    #   of `timestamp`.
    # @return [LocalTimestamp] a {LocalTimestamp} that has the same {value
    #   value} and {sub_second sub_second} as the `timestamp` parameter, a
    #   {utc_offset utc_offset} equal to the {TimezoneOffset#current_utc_offset
    #   current_utc_offset} of the `offset_info` parameter and
    #   {offset_info offset_info} set to the `offset_info`
    #   parameter.
    # @raise [ArgumentError] if `timestamp` or `period` is `nil`.
    def self.localize(timestamp, offset_info)
      raise ArgumentError, 'timestamp must be specified' unless timestamp
      raise ArgumentError, 'offset_info must be specified' unless offset_info
      new!(timestamp.value, timestamp.sub_second, offset_info.current_utc_offset).localize(offset_info)
    end

    # Sets the associated {TimezoneOffset} of this {LocalTimestamp}.
    #
    # @param offset_info [TimezoneOffset] a {TimezoneOffset} valid at the time
    #   and for the offset of this {LocalTimestamp}.
    # @return [LocalTimestamp] `self`.
    # @raise [ArgumentError] if `offset_info` is `nil`.
    # @raise [ArgumentError] if {utc? self.utc?} is `true`.
    # @raise [ArgumentError] if `period.current_utc_offset` does not equal
    #   `self.utc_offset`.
    def localize(offset_info)
      raise ArgumentError, 'offset_info must be specified' unless offset_info
      raise ArgumentError, 'offset_info.current_utc_offset does not match self.utc_offset' if utc? || utc_offset != offset_info.current_utc_offset
      @offset_info = offset_info
      self
    end

    # An overridden version of {Timestamp#to_time} that, if there is an
    # associated {TimezoneOffset}, returns a {LocalTime} with that offset.
    #
    # @return [Time] if there is an associated {TimezoneOffset}, a {LocalTime}
    #   representation of this {LocalTimestamp}, otherwise a `Time`
    #   representation.
    def to_time
      o = offset_info
      if o
        new_time(LocalTime).localize(o)
      else
        super
      end
    end

    # An overridden version of {Timestamp#to_datetime}, if there is an
    # associated {TimezoneOffset}, returns a {LocalDateTime} with that offset.
    #
    # @return [DateTime] if there is an associated {TimezoneOffset}, a
    #   {LocalDateTime} representation of this {LocalTimestamp}, otherwise a
    #   `DateTime` representation.
    def to_datetime
      o = offset_info
      if o
        new_datetime(LocalDateTime).localize(o)
      else
        super
      end
    end
  end
end
