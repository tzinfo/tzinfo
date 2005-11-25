module TZInfo
  # A period of time in a timezone where the same offset from UTC applies.
  class TimezonePeriod
    # Start time of the period (UTC). May be nil if unbounded.
    attr_reader :utc_start
    
    # End time of the period (UTC). May be nil if unbounded.
    attr_reader :utc_end
    
    # Base offset of the timezone from UTC (seconds).
    attr_reader :utc_offset
    
    # Offset from the local time where daylight savings is in effect (seconds).
    # E.g.: utc_offset could be -5 hours. Normally, std_offset would be 0. 
    # During daylight savings, std_offset would become +1 hours.
    attr_reader :std_offset
    
    # The identifier of this period, e.g. "GMT" (Greenwich Mean Time) or "BST"
    # (British Summer Time) for "Europe/London". The returned identifier is a 
    # symbol.
    attr_reader :zone_identifier
    
    # Start time of the period (local time). May be nil if unbounded.
    attr_reader :local_start
    
    # End time of the period (local time). May be nil if unbounded.
    attr_reader :local_end
    
    # Initializes a new TimezonePeriod.
    def initialize(utc_start, utc_end, utc_offset, std_offset, zone_identifier)
      @utc_start = utc_start
      @utc_end = utc_end
      @utc_offset = utc_offset
      @std_offset = std_offset
      @zone_identifier = zone_identifier            
      
      @local_start = utc_start.nil? ? nil : to_local(utc_start)
      @local_end = utc_end.nil? ? nil : to_local(utc_end)             
    end
    
    # Total offset from UTC (seconds). Equal to utc_offset + std_offset.
    def utc_total_offset
      utc_offset + std_offset
    end
    
    # Total offset from UTC (days). Result is a Rational.
    def utc_total_offset_rational
      Rational(utc_total_offset, 86400)
    end
    
    # true if daylight savings is in effect for this period; otherwise false.
    def dst?
      std_offset != 0
    end
    
    # true if this period is valid for the given utc DateTime; otherwise false.
    def valid_for_utc?(utc)
      utc_after_start?(utc) && utc_before_end?(utc) 
    end
    
    # true if the given utc DateTime is after the start of the period (inclusive); otherwise false.
    def utc_after_start?(utc)
      @utc_start.nil? || @utc_start <= utc
    end
    
    # true if the given utc DateTime is before the end of the period (exclusive); otherwise false.
    def utc_before_end?(utc)
      @utc_end.nil? || @utc_end > utc
    end
    
    # true if this period is valid for the given local DateTime; otherwise false.
    def valid_for_local?(local)
      local_after_start?(local) && local_before_end?(local) 
    end
    
    # true if the given local DateTime is after the start of the period (inclusive); otherwise false.
    def local_after_start?(local)
      @local_start.nil? || @local_start <= local
    end
    
    # true if the given local DateTime is before the end of the period (exclusive); otherwise false.
    def local_before_end?(local)
      @local_end.nil? || @local_end > local
    end
    
    # Converts a UTC DateTime to local time based on the offset of this period.
    def to_local(utc)
      utc + utc_total_offset_rational
    end
    
    # Converts a local DateTime to UTC based on the offset of this period.
    def to_utc(local)
      local - utc_total_offset_rational
    end
  end
end
