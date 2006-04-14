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

require 'tzinfo/time_or_datetime'
require 'tzinfo/timezone_period'

module TZInfo
  # Thrown to indicate that no TimezonePeriod matching a given time could be found.
  class PeriodNotFound < StandardError
  end

  # A list of TimezonePeriod instances defining a Timezone.
  class TimezonePeriodList
    # Initializes a new TimezonePeriodList
    def initialize
      @list = nil
      @last_year = nil
      @last_month = nil
      @start_year = nil
      @start_month = nil
      @unbounded_start = nil
    end
    
    # One unbounded start period can be defined. This must be set before any
    # calls to add.
    #
    # ArgumentError will be thrown if add or add_unbounded_start has already
    # been called.
    def add_unbounded_start(&block)
      raise ArgumentError, 'add_unbounded_start has already been called' if !@unbounded_start.nil?
      raise ArgumentError, 'add has already been called' if !@list.nil?
      @unbounded_start = block
    end
    
    # Adds a new TimezonePeriod to the list. utc_start_year and utc_start_month
    # are the year and month in which the period starts in UTC. A block must
    # be passed in that will return the TimezonePeriod when called with no
    # arguments.
    #
    # If the start year and month are less than the previously encountered
    # year and month ArgumentError will be thrown.
    #
    # Blocks must be added in order of increasing UTC start date.
    def add(utc_start_year, utc_start_month, &block)                 
      if @list.nil?
        @list = [block]
        @start_year = utc_start_year
        @start_month = utc_start_month
      else
        if utc_start_year < @last_year || (utc_start_year == @last_year && utc_start_month < @last_month)
          raise ArgumentError, 'Calls to add must be in increasing start date order'
        end
                         
        index = index_for_utc(utc_start_year, utc_start_month)
        if @list[index].nil?
          @list[index] = block
        elsif @list[index].is_a?(Array)
          @list[index] << block
        else
          @list[index] = [@list[index], block]
        end
      end
        
      @last_year = utc_start_year
      @last_month = utc_start_month        
    end
    
    # Returns the period for the given utc time. 
    # If no period is found for the given time, PeriodNotFound is thrown.
    def period_for_utc(utc)
      utc = TimeOrDateTime.wrap(utc)
      
      if @list.nil?
        result = nil
      else
        index = index_for_utc(utc.year, utc.mon)
        index = 0 if index < 0
        index = @list.length - 1 if index >= @list.length
        
        result = nil
        index.downto(0) {|i|
          contents = get_contents(i)
          
          if contents.is_a?(Array)
            (contents.length - 1).downto(0) {|j|
              if contents[j].valid_for_utc?(utc)
                result = contents[j]
                break
              end
            }
            break unless result.nil?
          elsif !contents.nil? && contents.valid_for_utc?(utc)
            result = contents
            break        
          end
        }
      end
      
      if result.nil?
        unbounded_start = get_unbounded_start
        if !unbounded_start.nil? && unbounded_start.valid_for_utc?(utc)          
          unbounded_start
        else
          raise PeriodNotFound, "No period found for utc: #{utc}"
        end
      else
        result
      end
    end
    
    # Returns the set of periods for the given local time as an array.
    # If no period is found for the given time, PeriodNotFound is thrown.
    # Results returned are ordered by increasing UTC start date.    
    def periods_for_local(local)
      local = TimeOrDateTime.wrap(local)
      
      # found_first is used to avoid searching back to far
      # the search will be limited at the next half year block after discovering
      # the first match
      found_first = nil
      
      result = []
      
      if !@list.nil?      
        # add one to the index because the periods are indexed by UTC start
        # and the period we are looking for could therefore be in the next
        # half of the year
        index = index_for_utc(local.year, local.mon) + 1
        index = 0 if index < 0
        index = @list.length - 1 if index >= @list.length
        
        index.downto(0) {|i|
          contents = get_contents(i)
          
          if contents.is_a?(Array)
            (contents.length - 1).downto(0) {|j|
              if contents[j].valid_for_local?(local)
                result << contents[j]
                found_first = i if found_first.nil?
              end
            }                        
          elsif !contents.nil? && contents.valid_for_local?(local)
            result << contents
            found_first = i if found_first.nil?
          end
          
          if !contents.nil? && !found_first.nil? && i < found_first
            # searched far enough
            break
          end
        }
      end
        
      if result.empty? || found_first == 0
        unbounded_start = get_unbounded_start
        result << unbounded_start if !unbounded_start.nil? && unbounded_start.valid_for_local?(local)
      end
      
      if result.empty?        
        raise PeriodNotFound, "No period found for utc: #{local}"
      else
        result.reverse!
        result
      end
    end
    
    private
      # Returns the index into the @list array for a given utc year and month.
      def index_for_utc(year, month)
        index = (year - @start_year) * 2
        index += 1 if month > 6
        index -= 1 if @start_month > 6
        index
      end
      
      # Returns the contents of any 6 month period, expanding any blocks to
      # TimezonePeriods first.
      def get_contents(index)
        contents = @list[index]
        if contents.nil?
          nil
        elsif contents.is_a?(TimezonePeriod)
          contents
        elsif contents.is_a?(Array)
          if contents.first.is_a?(TimezonePeriod)
            contents
          else
            contents = contents.collect {|proc|
              proc.call
            }
            @list[index] = contents
            contents       
          end
        elsif contents.is_a?(Proc)
          contents = contents.call
          @list[index] = contents
          contents
        end                
      end
      
      # Expands unbounded_start if it is defined.
      def get_unbounded_start
        contents = @unbounded_start
        if contents.nil?
          nil
        elsif contents.is_a?(TimezonePeriod)
          contents
        else
          contents = contents.call
          @unbounded_start = contents
          contents
        end
      end
  end
end
