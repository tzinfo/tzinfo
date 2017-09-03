module TZInfo
  # An OffsetTimezonePeriod instance represents a period of time in a timezone
  # where the same offset from UTC applies. The offset is constantly observed -
  # the period of time extends indefinitely forward and back.
  class OffsetTimezonePeriod < TimezonePeriod
    # Initializes a new OffsetTimezonePeriod with a TimezoneOffset.
    #
    # Raises ArgumentError if offset is nil.
    #
    # OffsetTimezonePeriod instances should not normally be constructed
    # manually.
    def initialize(offset)
      super
    end

    # Returns nil - OffsetTimezonePeriods have no start.
    def start_transition
      nil
    end

    # Returns nil - OffsetTimezonePeriods have no end.
    def end_transition
      nil
    end

    # Returns true if this OffsetTimezonePeriod is equal to p.
    def ==(p)
      p.kind_of?(OffsetTimezonePeriod) && offset == p.offset
    end
    alias eql? ==

    # Returns a hash of this OffsetTimezonePeriod.
    def hash
      offset.hash
    end
  end
end
