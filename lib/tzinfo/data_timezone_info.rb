#--
# Copyright (c) 2013 Philip Ross
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

module TZInfo
  # Represents a defined timezone containing transition data.
  class DataTimezoneInfo < TimezoneInfo  
  
    # Returns the TimezonePeriod for the given UTC time.
    def period_for_utc(utc)
      raise NotImplementedError, 'Subclasses must override period_for_utc'
    end
    
    # Returns the set of TimezonePeriods for the given local time as an array.    
    # Results returned are ordered by increasing UTC start date.
    # Returns an empty array if no periods are found for the given time.
    def periods_for_local(local)
      raise NotImplementedError, 'Subclasses must override periods_for_local'
    end
    
    # Constructs a Timezone instance for the timezone represented by this
    # DataTimezoneInfo.
    def create_timezone
      DataTimezone.new(self)
    end
  end
end
