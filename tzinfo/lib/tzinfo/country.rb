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

require 'tzinfo/countries'
require 'tzinfo/timezone'

module TZInfo
  # Thrown by Country#get if the code given is not valid.
  class InvalidCountryCode < StandardError
  end
  
  # An ISO 3166 country. Can be used to get a list of Timezones for a country.
  # For example:
  #
  #  us = Country.get('US')
  #  puts us.zone_identifiers
  #  puts us.zones    
  class Country
    include Comparable
    
    # Cache of loaded countries by code to avoid using require if a country
    # has already been loaded.
    @@loaded_countries = {}
    
    # Gets a Country by its ISO 3166 code. Raising an exception if it couldn't
    # be found.
    def self.get(identifier)
      instance = @@loaded_countries[identifier]
      if instance.nil?     
        raise InvalidCountryCode.new, 'Invalid identifier' if identifier !~ /^[A-Z]{2}$/
        begin
          require "tzinfo/countries/#{identifier}"
          instance = Countries.const_get(identifier).instance
          @@loaded_countries[instance.code] = instance
        rescue LoadError, NameError => e
          raise InvalidCountryCode, e.message
        end
      end
      
      instance
    end
    
    # If identifier is nil calls super(), else calls get(identifier).
    def self.new(identifier = nil)
      if identifier
        get(identifier)
      else
        super()
      end
    end
    
    # Returns an Array of all the valid country codes.
    def self.all_codes
      require 'tzinfo/countries/Index'
      Countries::Index.all_codes
    end
    
    # Returns an Array of all the defined Countries.
    def self.all
      all_codes.collect {|code|
        get(code)
      }
    end       
    
    # The ISO 3166 country code.
    def code
      'Unknown'
    end
    
    # The name of the country.
    def name
      'Unknown'
    end
    
    # Alias for name.
    def to_s
      name
    end
    
    # Array of Timezone identifiers for the country.
    def zone_names
      []
    end
    
    # Array of Timezone identifiers for the country.
    def zone_identifiers
      zone_names
    end
    
    # An array of all the Timezones for this country. Returns TimezoneProxy
    # objects to avoid the overhead of loading Timezone definitions until
    # a conversion is actually required.
    def zones
      zone_names.collect {|zone_name|
        TimezoneProxy.new(zone_name)
      }
    end        
    
    # Two Countries are considered to be equal if their codes are equal.
    def ==(c)
      code == c.code
    end
    
    # Compare two Countries based on their code. Returns -1 if tz is less
    # than self, 0 if tz is equal to self and +1 if tz is greater than self.
    def <=>(tz)
      code <=> tz.code
    end
            
    protected
      def self.setup
        class_eval <<CODE
            @@zone_names = []
            @@instance = new
            
            def zone_names
              @@zone_names
            end            
            
            def code
              @@code
            end
            
            def name
              @@name
            end
                        
            def self.instance
              @@instance
            end 
            
            protected
              def self.add_zone(zone_name)              
                @@zone_names << zone_name
              end
              
              def self.zones_added
                @@zone_names.freeze
              end
              
              def self.set_code(code)
                @@code = code
              end
              
              def self.set_name(name)
                @@name = name
              end                     
CODE
      end           
  end    
end
