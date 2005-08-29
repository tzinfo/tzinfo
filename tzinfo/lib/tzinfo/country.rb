require 'tzinfo/timezone'

module TZInfo
  # An ISO 3166 country. Can be used to get a list of Timezones for a country.
  # For example:
  #
  #  us = Country.get('US')
  #  puts us.zone_identifiers
  #  puts us.zones    
  class Country
    # Array of Timezone identifiers for the country.
    attr_reader :zone_names
    
    # Gets a Country by its ISO 3166 code. Raising an exception if it couldn't
    # be found.
    def self.get(identifier)
      raise 'Invalid identifier' if identifier !~ /^[A-Z]{2}$/
      require "tzinfo/countries/#{identifier}"
      Countries.const_get(identifier).instance      
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
      super
      @zone_names = []
      @code = nil
      @name = nil      
    end
    
    # The country code.
    def code
      @code
    end
    
    # The name of the country.
    def name
      @name
    end
    
    # Array of Timezone identifiers for the country.
    def zone_identifiers
      zone_names
    end
    
    # An array of all the Timezones for this country.
    def zones
      @zone_names.collect {|zone_name|
        Timezone.get(zone_name)
      }
    end
            
    protected
      def add_zone(zone_name)
        @zone_names << zone_name
      end
      
      def zones_added
        @zone_names.freeze
      end
      
      def set_code(code)
        @code = code
      end
      
      def set_name(name)
        @name = name
      end            
  end    
end
