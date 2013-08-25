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

module TZInfo

  class LinkedTimezone < InfoTimezone #:nodoc:
    # Returns the TimezonePeriod for the given UTC time. utc can either be
    # a DateTime, Time or integer timestamp (Time.to_i). Any timezone 
    # information in utc is ignored (it is treated as a UTC time).        
    #
    # If no TimezonePeriod could be found, PeriodNotFound is raised.
    def period_for_utc(utc)
      @linked_timezone.period_for_utc(utc)
    end
    
    # Returns the set of TimezonePeriod instances that are valid for the given
    # local time as an array. If you just want a single period, use 
    # period_for_local instead and specify how abiguities should be resolved.
    # Raises PeriodNotFound if no periods are found for the given time.
    def periods_for_local(local)
      @linked_timezone.periods_for_local(local)
    end
    
    # Returns an Array of transitions (TimezoneTransition instances) up to a 
    # given date and time, specified using UTC (utc_to).
    #
    # By default, all transitions will be returned, from the first up to utc_to.
    #
    # A from date and time may also be supplied using the utc_from parameter
    # (also specified in UTC), in which case only transitions from that date
    # and time will be returned.
    #
    # Comparisons with utc_to and utc_from are inclusive. If a transition falls 
    # precisely on either utc_to or utc_from, it will be returned.
    #
    # utc_to and utc_from can be specified using either DateTime, Time or 
    # integer timestamps (Time.to_i).
    def transitions_up_to(utc_to, utc_from = nil)
      @linked_timezone.transitions_up_to(utc_to, utc_from)
    end
    
    protected
      def setup(info)
        super(info)
        @linked_timezone = Timezone.get(info.link_to_identifier)
      end
  end
end
