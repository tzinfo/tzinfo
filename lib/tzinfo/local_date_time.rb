require 'date'

module TZInfo
  # A subclass of DateTime used to represent local times. LocalDateTime holds
  # a reference to the related TimezonePeriod and overrides various methods to
  # return results appropriate for the TimezonePeriod. Certain operations will
  # clear the associated TimezonePeriod. Once the TimezonePeriod has been
  # cleared, LocalDateTime behaves identically to DateTime.
  class LocalDateTime < DateTime
    include Localized

    # The TimezonePeriod associated with this instance.
    attr_reader :period

    # Sets the associated TimezonePeriod of this LocalDateTime.
    #
    # Returns self.
    #
    # Raises ArgumentError if period is nil.
    #
    # Raises ArgumentError if period.utc_total_offset does not equal
    # self.offset * 86400.
    def localize(period)
      raise ArgumentError, 'period must not be nil' unless period
      raise ArgumentError, 'period.utc_total_offset does not match self.utc_offset' if offset * 86400 != period.utc_total_offset
      @period = period
      self
    end

    # Overridden version of DateTime#to_time that returns a LocalTime,
    # preserving the associated TimezonePeriod.
    def to_time
      if_period(super) do |p,t|
        # Ruby 2.4.0 changed the behaviour of to_time so that it preserves the
        # offset instead of converting to the system local timezone.
        #
        # When self has an associated TimezonePeriod, this implementation will
        # preserve the offset on all versions of Ruby.
        LocalTime.at(t.to_i, t.subsec * 1_000_000).localize(p)
      end
    end

    # Overridden version of DateTime#downto that clears the associated
    # TimezonePeriod of the returned or yielded instances.
    def downto(min)
      if block_given?
        super {|dt| yield dt.clear_period }
      else
        enum = super
        enum.each {|dt| dt.clear_period }
        enum
      end
    end

    # Overridden version of DateTime#england that preserves the associated
    # TimezonePeriod.
    def england
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_period(super) {|p,dt| dt.localize(p) }
    end

    # Overridden version of DateTime#gregorian that preserves the associated
    # TimezonePeriod.
    def gregorian
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_period(super) {|p,dt| dt.localize(p) }
    end

    # Overridden version of DateTime#italy that preserves the associated
    # TimezonePeriod.
    def italy
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_period(super) {|p,dt| dt.localize(p) }
    end

    # Overridden version of DateTime#julian that preserves the associated
    # TimezonePeriod.
    def julian
      # super doesn't call #new_start on MRI, so each method has to be
      # individually overridden.
      if_period(super) {|p,dt| dt.localize(p) }
    end

    # Overridden version of DateTime#new_start that preserves the associated
    # TimezonePeriod.
    def new_start(start = Date::ITALY)
      if_period(super) {|p,dt| dt.localize(p) }
    end

    # Overridden version of DateTime#step that clears the associated
    # TimezonePeriod of the returned or yielded instances.
    def step(limit, step = 1)
      if block_given?
        super {|dt| yield dt.clear_period }
      else
        enum = super
        enum.each {|dt| dt.clear_period }
        enum
      end
    end

    # Overridden version of DateTime#upto that clears the associated
    # TimezonePeriod of the returned or yielded instances.
    def upto(max)
      if block_given?
        super {|dt| yield dt.clear_period }
      else
        enum = super
        enum.each {|dt| dt.clear_period }
        enum
      end
    end

    protected

    # Clears the associated TimezonePeriod and returns self.
    def clear_period
      @period = nil
      self
    end
  end
end
