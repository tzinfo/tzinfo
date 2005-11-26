module TZInfo
  # A period of time in a timezone where the same offset from UTC applies.
  class TimezonePeriod
    
    # A cache of pre-reduced Rationals for each half-hour between -12 and +12.
    # This is used to save time when loading a TimezonePeriod.
    @@rational_cache = {
      -43200 => Rational.new!(-1,2),
      -41400 => Rational.new!(-23,48),
      -39600 => Rational.new!(-11,24),
      -37800 => Rational.new!(-7,16),
      -36000 => Rational.new!(-5,12),
      -34200 => Rational.new!(-19,48),
      -32400 => Rational.new!(-3,8),
      -30600 => Rational.new!(-17,48),
      -28800 => Rational.new!(-1,3),
      -27000 => Rational.new!(-5,16),
      -25200 => Rational.new!(-7,24),
      -23400 => Rational.new!(-13,48),
      -21600 => Rational.new!(-1,4),
      -19800 => Rational.new!(-11,48),
      -18000 => Rational.new!(-5,24),
      -16200 => Rational.new!(-3,16),
      -14400 => Rational.new!(-1,6),
      -12600 => Rational.new!(-7,48),
      -10800 => Rational.new!(-1,8),
      -9000 =>  Rational.new!(-5,48),
      -7200 =>  Rational.new!(-1,12),
      -5400 =>  Rational.new!(-1,16),
      -3600 =>  Rational.new!(-1,24),
      -1800 =>  Rational.new!(-1,48),
      0 =>      Rational.new!(0,1),
      1800 =>   Rational.new!(1,48),
      3600 =>   Rational.new!(1,24),
      5400 =>   Rational.new!(1,16),
      7200 =>   Rational.new!(1,12),
      9000 =>   Rational.new!(5,48),
      10800 =>  Rational.new!(1,8),
      12600 =>  Rational.new!(7,48),
      14400 =>  Rational.new!(1,6),
      16200 =>  Rational.new!(3,16),
      18000 =>  Rational.new!(5,24),
      19800 =>  Rational.new!(11,48),
      21600 =>  Rational.new!(1,4),
      23400 =>  Rational.new!(13,48),
      25200 =>  Rational.new!(7,24),
      27000 =>  Rational.new!(5,16),
      28800 =>  Rational.new!(1,3),
      30600 =>  Rational.new!(17,48),
      32400 =>  Rational.new!(3,8),
      34200 =>  Rational.new!(19,48),
      36000 =>  Rational.new!(5,12),
      37800 =>  Rational.new!(7,16),
      39600 =>  Rational.new!(11,24),
      41400 =>  Rational.new!(23,48),
      43200 =>  Rational.new!(1,2)}
    
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
      @utc_total_offset = utc_offset + std_offset
      @utc_total_offset_rational = @@rational_cache[utc_total_offset]
      @utc_total_offset_rational = Rational(utc_total_offset, 86400) if @utc_total_offset_rational.nil?
      
      @local_start = utc_start.nil? ? nil : to_local(utc_start)
      @local_end = utc_end.nil? ? nil : to_local(utc_end)             
    end
    
    # Total offset from UTC (seconds). Equal to utc_offset + std_offset.
    def utc_total_offset
      @utc_total_offset
    end
    
    # Total offset from UTC (days). Result is a Rational.
    def utc_total_offset_rational
      @utc_total_offset_rational
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
