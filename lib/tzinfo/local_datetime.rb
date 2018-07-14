# frozen_string_literal: true

require 'date'

module TZInfo
  # A subclass of `DateTime` used to represent local times. {LocalDateTime}
  # holds a reference to the related {TimezoneOffset} and overrides various
  # methods to return results appropriate for the {TimezoneOffset}. Certain
  # operations will clear the associated {TimezoneOffset}. Once the
  # {TimezoneOffset} has been cleared, {LocalDateTime} behaves identically to
  # `DateTime`.
  class LocalDateTime < DateTime
    include Localized

    # @return [TimezoneOffset] the {TimezoneOffset} associated with this
    #   instance.
    attr_reader :offset_info

    # Sets the associated {TimezoneOffset}.
    #
    # @param offset_info [TimezoneOffset] a {TimezoneOffset} valid at the time
    #   and for the offset of this {LocalDateTime}.
    # @return [LocalDateTime] `self`.
    # @raise [ArgumentError] if `offset_info` is `nil`.
    # @raise [ArgumentError] if `offset_info.current_utc_offset` does not
    #   equal `self.offset * 86400`.
    def localize(offset_info)
      raise ArgumentError, 'offset_info must be specified' unless offset_info
      raise ArgumentError, 'offset_info.current_utc_offset does not match self.utc_offset' if offset * 86400 != offset_info.current_utc_offset
      @offset_info = offset_info
      self
    end

    # An overridden version of `DateTime#to_time` that, if there is an
    # associated {TimezoneOffset}, returns a {LocalTime} with that offset.
    #
    # @return [Time] if there is an associated {TimezoneOffset}, a {LocalTime}
    #   representation of this {LocalDateTime}, otherwise a `Time`
    #   representation.
    def to_time
      if_offset_info(super) do |o,t|
        # Ruby 2.4.0 changed the behaviour of to_time so that it preserves the
        # offset instead of converting to the system local timezone.
        #
        # When self has an associated TimezonePeriod, this implementation will
        # preserve the offset on all versions of Ruby.
        LocalTime.at(t.to_i, t.subsec * 1_000_000).localize(o)
      end
    end

    # An overridden version of `DateTime#downto` that clears the associated
    # {TimezoneOffset} of the returned or yielded instances.
    def downto(min)
      if block_given?
        super {|dt| yield dt.clear_offset_info }
      else
        enum = super
        enum.each {|dt| dt.clear_offset_info }
        enum
      end
    end

    # An overridden version of `DateTime#england` that preserves the associated
    # {TimezoneOffset}.
    #
    # @return [DateTime]
    def england
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_offset_info(super) {|o,dt| dt.localize(o) }
    end

    # An overridden version of `DateTime#gregorian` that preserves the
    # associated {TimezoneOffset}.
    #
    # @return [DateTime]
    def gregorian
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_offset_info(super) {|o,dt| dt.localize(o) }
    end

    # An overridden version of `DateTime#italy` that preserves the associated
    # {TimezoneOffset}.
    #
    # @return [DateTime]
    def italy
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_offset_info(super) {|o,dt| dt.localize(o) }
    end

    # An overridden version of `DateTime#julian` that preserves the associated
    # {TimezoneOffset}.
    #
    # @return [DateTime]
    def julian
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_offset_info(super) {|o,dt| dt.localize(o) }
    end

    # An overridden version of `DateTime#new_start` that preserves the
    # associated {TimezoneOffset}.
    #
    # @return [DateTime]
    def new_start(start = Date::ITALY)
      if_offset_info(super) {|o,dt| dt.localize(o) }
    end

    # An overridden version of `DateTime#step` that clears the associated
    # {TimezoneOffset} of the returned or yielded instances.
    def step(limit, step = 1)
      if block_given?
        super {|dt| yield dt.clear_offset_info }
      else
        enum = super
        enum.each {|dt| dt.clear_offset_info }
        enum
      end
    end

    # An overridden version of `DateTime#upto` that clears the associated
    # {TimezoneOffset} of the returned or yielded instances.
    def upto(max)
      if block_given?
        super {|dt| yield dt.clear_offset_info }
      else
        enum = super
        enum.each {|dt| dt.clear_offset_info }
        enum
      end
    end

    protected

    # Clears the associated {TimezoneOffset}.
    #
    # @return [LocalDateTime] `self`.
    def clear_offset_info
      @offset_info = nil
      self
    end
  end
end
