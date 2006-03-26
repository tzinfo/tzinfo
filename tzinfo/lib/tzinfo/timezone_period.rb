#--
# Copyright (c) 2005-2006 Philip Ross
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

require 'tzinfo/offset_rationals'
require 'tzinfo/time_or_datetime'

module TZInfo
  # A period of time in a timezone where the same offset from UTC applies.
  #
  # All the methods that take times accept instances of Time, DateTime or
  # integer timestamps.
  class TimezonePeriod

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
    
    # Total offset from UTC (seconds). Equal to utc_offset + std_offset.
    attr_reader :utc_total_offset
    
    # Initializes a new TimezonePeriod.
    def initialize(utc_start, utc_end, utc_offset, std_offset, zone_identifier)
      @utc_start = utc_start.nil? ? nil : TimeOrDateTime.wrap(utc_start)
      @utc_end = utc_end.nil? ? nil : TimeOrDateTime.wrap(utc_end)
      @utc_offset = utc_offset
      @std_offset = std_offset
      @zone_identifier = zone_identifier
      @utc_total_offset = utc_offset + std_offset
      @utc_total_offset_rational = nil
              
      # Use add_with_convert to use DateTime based TimeOrDateTimes if we run
      # off the range of Time.
      @local_start = @utc_start.nil? ? nil : @utc_start.add_with_convert(@utc_total_offset)
      @local_end = @utc_end.nil? ? nil : @utc_end.add_with_convert(@utc_total_offset)             
    end
            
    # Total offset from UTC (days). Result is a Rational.
    def utc_total_offset_rational
      if @utc_total_offset_rational.nil?
        @utc_total_offset_rational = OffsetRationals.rational_for_offset(@utc_total_offset) 
      end
      @utc_total_offset_rational
    end
    
    # Start time of the period (UTC). May be nil if unbounded.
    def utc_start
      @utc_start.nil? ? nil : @utc_start.to_datetime
    end
    
    # End time of the period (UTC). May be nil if unbounded.
    def utc_end
      @utc_end.nil? ? nil : @utc_end.to_datetime
    end
    
    # Start time of the period (local time). May be nil if unbounded.
    def local_start
      @local_start.nil? ? nil : @local_start.to_datetime
    end
    
    # End time of the period (local time). May be nil if unbounded.
    def local_end
      @local_end.nil? ? nil : @local_end.to_datetime
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
      TimeOrDateTime.wrap(utc) {|utc|
        utc + utc_total_offset
      }
    end
    
    # Converts a local DateTime to UTC based on the offset of this period.
    def to_utc(local)
      TimeOrDateTime.wrap(local) {|local|
        local - utc_total_offset
      }
    end
  end
end
