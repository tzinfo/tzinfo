#--
# Copyright (c) 2006-2013 Philip Ross
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

require 'date'

module TZInfo
  # Represents an transition from one timezone offset to another at a particular
  # date and time.
  class TimezoneTransition
    # The offset this transition changes to (a TimezoneOffset instance).
    attr_reader :offset
    
    # The offset this transition changes from (a TimezoneOffset instance).
    attr_reader :previous_offset
    
    def initialize(offset, previous_offset)
      @offset = offset
      @previous_offset = previous_offset
      @local_end = nil
      @local_start = nil
    end
    
    # A TimeOrDateTime instance representing the UTC time when this transition
    # occurs.
    def at
      raise NotImplementedError, 'Subclasses must override at'
    end
    
    # A TimeOrDateTime instance representing the local time when this transition
    # causes the previous observance to end (calculated from at using 
    # previous_offset).
    def local_end
      # Thread-safey: It is possible that the value of @local_end may be 
      # calculated multiple times in concurrently executing threads. It is not 
      # worth the overhead of locking to ensure that @local_end is only 
      # calculated once.
    
      @local_end = at.add_with_convert(@previous_offset.utc_total_offset) unless @local_end      
      @local_end
    end
    
    # A TimeOrDateTime instance representing the local time when this transition
    # causes the next observance to start (calculated from at using offset).
    def local_start
      # Thread-safey: It is possible that the value of @local_start may be 
      # calculated multiple times in concurrently executing threads. It is not 
      # worth the overhead of locking to ensure that @local_start is only 
      # calculated once.
    
      @local_start = at.add_with_convert(@offset.utc_total_offset) unless @local_start
      @local_start
    end
    
    # Returns true if this TimezoneTransition is equal to the given
    # TimezoneTransition. Two TimezoneTransition instances are 
    # considered to be equal by == if offset, previous_offset and at are all 
    # equal.
    def ==(tti)
      tti.kind_of?(TimezoneTransition) &&
        offset == tti.offset && previous_offset == tti.previous_offset && at == tti.at
    end
    
    # Returns true if this TimezoneTransition is equal to the given
    # TimezoneTransition. Two TimezoneTransition instances are 
    # considered to be equal by eql? if offset, previous_offset and at are all
    # equal and the type used to define at in both instances is the same.
    def eql?(tti)
      tti.kind_of?(TimezoneTransition) &&
        offset == tti.offset && previous_offset == tti.previous_offset && at.eql?(tti.at)
    end
    
    # Returns a hash of this TimezoneTransition instance.
    def hash
      @offset.hash ^ @previous_offset.hash ^ at.hash
    end
    
    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #{at.inspect},#{@offset.inspect}>"      
    end
  end
end
