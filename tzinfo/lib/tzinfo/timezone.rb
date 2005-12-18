#--
# Copyright (c) 2005 Philip Ross
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
require 'tzinfo/country'
require 'tzinfo/timezone_period'
require 'tzinfo/timezone_period_list'

module TZInfo
  # Indicate a specified time in a local timezone has more than one
  # possible time in UTC. This happens when switching from daylight savings time 
  # to normal time where the clocks are rolled back. Thrown by period_for_local
  # and local_to_utc when using an ambiguous time and not specifying any 
  # means to resolve the ambiguity.
  class AmbiguousTime < StandardError
  end
  
  # Thrown by Timezone#get if the identifier given is not valid.
  class InvalidTimezoneIdentifier < StandardError
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
    include Comparable
    
    # Cache of loaded zones by identifier to avoid using require if a zone
    # has already been loaded.
    @@loaded_zones = {}
    
    # Returns a timezone by its identifier (e.g. "Europe/London", 
    # "America/Chicago" or "UTC").
    #
    # Raises an exception of the timezone couldn't be found.
    def self.get(identifier)
      instance = @@loaded_zones[identifier]
      if instance.nil?      
        raise InvalidTimezoneIdentifier, 'Invalid identifier' if identifier !~ /^[A-z0-9\+\-_]+(\/[A-z0-9\+\-_]+)*$/
        identifier = identifier.gsub(/-/, '__m__').gsub(/\+/, '__p__')
        begin
          require "tzinfo/definitions/#{identifier}"
          
          m = Definitions
          identifier.split(/\//).each {|part|
            m = m.const_get(part)
          }
          instance = m.instance
          @@loaded_zones[instance.identifier] = instance         
        rescue LoadError, NameError => e
          raise InvalidTimezoneIdentifier, e.message
        end
      end
      
      instance
    end
    
    # If identifier is nil calls super(), else calls get(identifier). An
    # identfier should always be passed in when called externally.
    def self.new(identifier = nil)
      if identifier        
        get(identifier)
      else
        super()
      end
    end
    
    # At the moment, returns the result of all_country_zones. May be changed
    # in the future to return all the Timezone instances including
    # non-country specific zones.
    def self.all
      all_country_zones
    end
    
    # At the moment, returns the result of all_country_zone_identifiers. May be changed
    # in the future to return all the zone identifiers including
    # non-country specific zones.
    def self.all_identifiers
      all_country_zone_identifiers
    end
    
    # Returns all the Timezones defined for all Countries. This is not the
    # complete set of Timezones as some are not country specific (e.g. 
    # 'Etc/GMT').
    # 
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.        
    def self.all_country_zones
      Country.all_codes.inject([]) {|zones,country|
        zones += Country.get(country).zones
      }
    end
    
    # Returns all the zone identifiers defined for all Countries. This is not the
    # complete set of zone identifiers as some are not country specific (e.g. 
    # 'Etc/GMT'). You can obtain a Timezone instance for a given identifier
    # with the get method.
    def self.all_country_zone_identifiers
      Country.all_codes.inject([]) {|zones,country|
        zones += Country.get(country).zone_identifiers
      }
    end
    
    # Returns all US Timezone instances. A shortcut for 
    # TZInfo::Country.get('US').zones.
    #
    # Returns TimezoneProxy objects to avoid the overhead of loading Timezone
    # definitions until a conversion is actually required.
    def self.us_zones
      Country.get('US').zones
    end
    
    # Returns all US zone identifiers. A shortcut for 
    # TZInfo::Country.get('US').zone_identifiers.
    def self.us_zone_identifiers
      Country.get('US').zone_identifiers
    end
    
    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      'Unknown'
    end
    
    # An alias for identifier.
    def name
      # Don't use alias, as identifier gets overridden.
      identifier
    end
    
    # Returns a friendlier version of the idenfitifer.
    def to_s
      friendly_identifier
    end   
    
    # Returns a friendlier version of the idenfitifer. Set skip_first_part to 
    # omit the first part of the identifier (typically a region name) where
    # there is more than one part.
    def friendly_identifier(skip_first_part = false)
      parts = identifier.split('/')
      if parts.empty?
        # shouldn't happen
        identifier
      elsif parts.length == 1        
        parts[0]
      else
        if skip_first_part
          result = ''
        else
          result = parts[0] + ' - '
        end
        
        parts[1, parts.length - 1].reverse_each {|part|
          part.gsub!(/_/, ' ')
          
          if part.index(/[a-z]/)
            # Missing a space if a lower case followed by an upper case and the
            # name isn't McXxxx.
            part.gsub!(/([^M][a-z])([A-Z])/, '\1 \2')
            part.gsub!(/([M][a-bd-z])([A-Z])/, '\1 \2')
            
            # Missing an apostrophe if two consecutive upper case characters.
            part.gsub!(/([A-Z])([A-Z])/, '\1\'\2')
          end
          
          result << part
          result << ', '
        }
        
        result.slice!(result.length - 2, 2)
        result
      end
    end
    
    # Returns the TimezonePeriod for the given UTC time. utc can either be
    # a DateTime or a Time. Any timezone information in utc is ignored (it is
    # treated as a UTC time).    
    #
    # If no TimezonePeriod could be found, PeriodNotFound is raised.
    def period_for_utc(utc)
      utc = as_datetime(utc)      
      periods.period_for_utc(utc)      
    end
    
    # Returns the TimezonePeriod for the given local time. local can either be
    # a DateTime or a Time. Any timezone information in local is ignored (it is
    # treated as a time in the current timezone).
    #
    # Warning: There are local times that have no equivalent UTC times (e.g.
    # in the transition from standard time to daylight savings time). There are
    # also local times that have more than one UTC equivalent (e.g. in the
    # transition from daylight savings time to standard time).
    #
    # In the first case (no equivalent UTC time), a PeriodNotFound exception
    # will be thrown.
    #
    # In the second case (more than one equivalent UTC time), an AmbiguousTime
    # exception will be thrown unless the optional dst parameter or block
    # handles the ambiguity. 
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the dst parameter can be used to select whether the 
    # daylight savings time or local time is used. For example,
    #
    #   Timezone.get('America/New_York').period_for_local(DateTime.new(2004,10,31,1,30,0))
    #
    # would raise an AmbiguousTime exception.
    #
    # Specifying dst=true would the daylight savings period from April to 
    # October 2004. Specifying dst=false would return the standard period
    # from October 2004 to April 2005.
    #
    # If the dst parameter does not resolve the ambiguity, and a block is 
    # specified, it is called. The block must take a single parameter - an
    # array of the periods that need to be resolved. The block can select and
    # return a single period or return nil or an empty array
    # to cause an AmbiguousTime exception to be raised.
    def period_for_local(local, dst = nil)
      local = as_datetime(local)      
      results = periods.periods_for_local(local)
      
      # by this point, results must contain at least one period
      if results.size < 2
        results.first
      else
        # ambiguous result try to resolve
        
        if !dst.nil?
          matches = results.find_all {|period| period.dst? == dst}
          results = matches if !matches.empty?            
        end
        
        if results.size < 2
          results.first
        else
          # still ambiguous, try the block
                    
          if block_given?
            results = yield results
          end
          
          if results.is_a?(TimezonePeriod)
            results
          elsif !results.nil? && results.size == 1
            results.first
          else          
            raise AmbiguousTime, "#{local} is an ambiguous local time."
          end
        end
      end      
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
    # Warning: There are local times that have no equivalent UTC times (e.g.
    # in the transition from standard time to daylight savings time). There are
    # also local times that have more than one UTC equivalent (e.g. in the
    # transition from daylight savings time to standard time).
    #
    # In the first case (no equivalent UTC time), a PeriodNotFound exception
    # will be thrown.
    #
    # In the second case (more than one equivalent UTC time), an AmbiguousTime
    # exception will be thrown unless the optional dst parameter or block
    # handles the ambiguity. 
    #
    # If the ambiguity is due to a transition from daylight savings time to
    # standard time, the dst parameter can be used to select whether the 
    # daylight savings time or local time is used. For example,
    #
    #   Timezone.get('America/New_York').local_to_utc(DateTime.new(2004,10,31,1,30,0))
    #
    # would raise an AmbiguousTime exception.
    #
    # Specifying dst=true would return 2004-10-31 5:30:00. Specifying dst=false
    # would return 2004-10-31 6:30:00.
    #
    # If the dst parameter does not resolve the ambiguity, and a block is 
    # specified, it is called. The block must take a single parameter - an
    # array of the periods that need to be resolved. The block can return a
    # single period to use to convert the time or return nil or an empty array
    # to cause an AmbiguousTime exception to be raised.
    def local_to_utc(local, dst = nil)
      run_on_datetime(local) {|local|
        if block_given?
          period = period_for_local(local, dst) {|periods| yield periods }
        else
          period = period_for_local(local, dst)
        end
        
        period.to_utc(local)
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
    
    # Returns the current Time and TimezonePeriod as an array. The first element
    # is the time, the second element is the period.
    def current_period_and_time
      utc = Time.now.utc
      [utc_to_local(utc), period_for_utc(utc)]
    end
    
    alias :current_time_and_period :current_period_and_time
    
    # Two Timezones are considered to be equal if their identifiers are the same.
    def ==(tz)
      identifier == tz.identifier
    end
    
    # Compare two Timezones based on their identifier. Returns -1 if tz is less
    # than self, 0 if tz is equal to self and +1 if tz is greater than self.
    def <=>(tz)
      identifier <=> tz.identifier
    end
    
    protected
      def self.setup        
        class_eval <<CODE
            @@periods = TimezonePeriodList.new
            @@instance = new
            
            def identifier
              @@identifier
            end            
            
            def self.instance
              @@instance
            end
            
            def periods
              @@periods
            end
            
            protected
              def self.add_period(year, month)              
                @@periods.add(year, month) { yield }
              end
              
              def self.add_unbounded_start_period
                @@periods.add_unbounded_start { yield }
              end
              
              def self.set_identifier(identifier)
                @@identifier = identifier
              end              
CODE
      end
    
    private
      # If called with a Time, returns an equivalent DateTime; otherwise returns
      # the datetime paramter.
      def as_datetime(datetime)
        if datetime.instance_of?(Time)
          DateTime.new(datetime.year, datetime.mon, datetime.mday, datetime.hour, datetime.min, datetime.sec)
        else
          datetime
        end
      end
    
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
  
  # A proxy class representing a timezone with a given identifier. It can be
  # constructed with an identifier and behaves almost identically to a Timezone 
  # loaded through Timezone.get. The first time an attempt is made to perform
  # a conversion on the proxy, the real Timezone class is loaded. If the
  # proxy's identifier was not valid, then an exception will be thrown at this
  # point.    
  class TimezoneProxy < Timezone
    # Construct a new TimezoneProxy for the given identifier. The identifier
    # is not checked when constructing the proxy. It will be validated on the
    # first conversion.
    def self.new(identifier)
      # Need to override new to undo the behaviour introduced in Timezone#new.
      tzp = super()
      tzp.instance_eval <<CODE
        @identifier = identifier
        @real_tz = nil
CODE
      tzp
    end
        
    # The identifier of the timezone, e.g. "Europe/Paris".
    def identifier
      @real_tz.nil? ? @identifier : @real_tz.identifier
    end
    
    def periods #:nodoc:
      if @real_tz.nil?
        # We now need the actual data. Load in the real timezone.
        @real_tz = Timezone.get(@identifier)
      end
      @real_tz.periods      
    end        
  end    
end
