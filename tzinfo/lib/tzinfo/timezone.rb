
module TZInfo
  class PeriodNotFound < StandardError
  end
  
  # Timezone is the base class of all timezones. It provides a factory method
  # get to access timezones by identifier. Once a specific Timezone has been
  # retrieved, DateTimes and Times can be converted between the UTC and the
  # local time for the zone. For example:
  #
  #   tz = TZInfo::Timezone.get('America/New_York')
  #   puts tz.utc_to_local(DateTime.new(2005,8,29,15,35,0)).to_s
  #   puts tz.local_to_utc(Time.utc(2005,8,29,11,35,0)).to_s
  #
  # The timezone information all comes from the tz database
  # (see http://www.twinsun.com/tz/tz-link.htm)
  class Timezone
    # Returns a timezone by its identifier (e.g. "Europe/London", 
    # "America/Chicago" and "UTC").
    #
    # Raises an exception of the timezone couldn't be found.
    def self.get(identifier)
      raise 'Invalid identifier' if identifier !~ /^[A-z0-9\+\-_]+(\/[A-z0-9\+\-_]+)*$/
      identifier = identifier.gsub(/-/, '__m__').gsub(/\+/, '__p__')
      require "tzinfo/definitions/#{identifier}"
      
      m = Definitions
      identifier.split(/\//).each {|part|
        m = m.const_get(part)
      }
      m.instance      
    end
    
    # Initializes the timezone.
    def initialize
      super
      @periods = []
      @identifier = nil
    end
    
    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      @identifier
    end
    
    # Returns the TimezonePeriod for the given UTC time. utc can either be
    # a DateTime or a Time. Any timezone information in utc is ignored (it is
    # treated as a UTC time).    
    #
    # If no TimezonePeriod could be found, PeriodNotFound is raised.
    def period_for_utc(utc)
      run_on_datetime(utc) {|utc|
        # dumb search for now      
        @periods.each {|period|
          if period.valid_for_utc?(utc)
            return period          
          end
        }
          
        # if nothing found, assume the first and last periods are unbounded
        if @periods.length > 0
          
          last = @periods[@periods.length - 1] 
          if last.utc_after_start?(utc)
            last
          else
            first = @periods[0]
            if first.utc_before_end?(utc)
              first
            else            
              raise PeriodNotFound, "No time period found for #{utc}"
            end
          end
        else
          raise PeriodNotFound, "No time period found for #{utc}"
        end
      }
    end
    
    # Returns the TimezonePeriod for the given local time. local can either be
    # a DateTime or a Time. Any timezone information in local is ignored (it is
    # treated as a time in the current timezone).
    #
    # If no TimezonePeriod could be found, PeriodNotFound is raised. This will
    # happen when a change to daylight savings occurs and an hour is skipped.
    def period_for_local(local)  
      run_on_datetime(local) {|local|
        # dumb search for now      
        @periods.each {|period|
          if period.valid_for_local?(local)
            return period          
          end
        }
          
        # if nothing found, assume the first and last periods are unbounded
        if @periods.length > 0
          
          last = @periods[@periods.length - 1] 
          if last.local_after_start?(local)
            last
          else
            first = @periods[0]
            if first.local_before_end?(local)
              first
            else
              raise PeriodNotFound, "No time period found for #{utc}. This could be because a change to daylight savings time caused an hour to be skipped."
            end
          end
        else
          raise PeriodNotFound, "No time period found for #{utc}. This could be because a change to daylight savings time caused an hour to be skipped."
        end
      }
    end
    
    # Converts a time in UTC to the local timezone. utc can either be
    # a DateTime or a Time. The returned time has the same type as utc.
    # Any timezone information in utc is ignored (it is treated as a UTC time).
    def utc_to_local(utc)
      run_on_datetime(utc) {|utc|
        period_for_utc(utc).to_local(utc)
      }
    end
    
    # Converts a time in the local timezone to UTC. local can either be
    # a DateTime or a Time. The returned time has the same type as local.
    # Any timezone information in local is ignored (it is treated as a local time).
    #
    # During the period when daylight savings reverts to standard time and there
    # are two possible UTC times for each local time, local_to_utc returns the
    # earlier time.
    #
    # For times skipped during a change to daylight savings, PeriodNotFound is
    # raised.
    def local_to_utc(local)
      run_on_datetime(local) {|local|      
        period_for_local(local).to_utc(local)
      }
    end
    
    # Returns the current time in the timezone as a Time.
    def now
      utc_to_local(Time.now.utc)
    end
    
    # Returns the TimezonePeriod for the current time. 
    def current_period
      period_for_utc(Time.now.utc)
    end
    
    # Returns the current time and TimezonePeriod as an array.
    def current_period_and_time
      utc = Time.now.utc
      [utc_to_local(utc), period_for_utc(utc)]
    end
    
    protected
      def add_period(period)
        @periods << period
      end
      
      def set_identifier(identifier)
        @identifier = identifier
      end
      
    private
      # Executes a block with a DateTime. If datetime is a Time it will be
      # converted to a DateTime before yielding to the block and the result of
      # the block will be converted back to a Time.
      def run_on_datetime(datetime)
        if datetime.instance_of?(Time)
          datetime = DateTime.new(datetime.year, datetime.mon, datetime.mday, datetime.hour, datetime.min, datetime.sec)
          result = yield datetime
          
          # not necessarily utc, but pretend it is
          Time.utc(result.year, result.mon, result.mday, result.hour, result.min, result.sec)
        else
          yield datetime
        end
      end
  end 
  
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
    # (British Summer Time) for "Europe/London".
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
    
    # true if the given utc DateTime is after the start of the period; otherwise false.
    def utc_after_start?(utc)
      @utc_start.nil? || @utc_start <= utc
    end
    
    # true if the given utc DateTime is before the end of the period; otherwise false.
    def utc_before_end?(utc)
      @utc_end.nil? || @utc_end > utc
    end
    
    # true if this period is valid for the given local DateTime; otherwise false.
    def valid_for_local?(local)
      local_after_start?(local) && local_before_end?(local) 
    end
    
    # true if the given local DateTime is after the start of the period; otherwise false.
    def local_after_start?(local)
      @local_start.nil? || @local_start <= local
    end
    
    # true if the given local DateTime is before the end of the period; otherwise false.
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
