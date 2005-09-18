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
    
    # Gets a Country by its ISO 3166 code. Raising an exception if it couldn't
    # be found.
    def self.get(identifier)
      raise InvalidCountryCode.new, 'Invalid identifier' if identifier !~ /^[A-Z]{2}$/
      begin
        require "tzinfo/countries/#{identifier}"
        Countries.const_get(identifier).instance
      rescue LoadError, NameError => e
        raise InvalidCountryCode, e
      end
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
