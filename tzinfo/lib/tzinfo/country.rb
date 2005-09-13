require 'tzinfo/timezone'

module TZInfo
  # An ISO 3166 country. Can be used to get a list of Timezones for a country.
  # For example:
  #
  #  us = Country.get('US')
  #  puts us.zone_identifiers
  #  puts us.zones    
  class Country
    # Gets a Country by its ISO 3166 code. Raising an exception if it couldn't
    # be found.
    def self.get(identifier)
      raise 'Invalid identifier' if identifier !~ /^[A-Z]{2}$/
      require "tzinfo/countries/#{identifier}"
      Countries.const_get(identifier).instance      
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
    
    # Initializes the Country.
    def initialize
            
    end
    
    # The country code.
    def code
      'Unknown'
    end
    
    # The name of the country.
    def name
      'Unknown'
    end
    
    # Array of Timezone identifiers for the country.
    def zone_names
      []
    end
    
    # Array of Timezone identifiers for the country.
    def zone_identifiers
      zone_names
    end
    
    # An array of all the Timezones for this country.
    def zones
      zone_names.collect {|zone_name|
        Timezone.get(zone_name)
      }
    end
            
    protected
      def self.setup
        class_eval <<CODE
            @@zone_names = []
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
                        
            def zone_names
              @@zone_names
            end            
            
            def code
              @@code
            end
            
            def name
              @@name
            end
            
            @@instance = new
            def self.instance
              @@instance
            end          
CODE
      end           
  end    
end
