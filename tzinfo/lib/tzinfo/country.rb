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
    
    # Defined countries.
    @@countries = nil        
    
    # Gets a Country by its ISO 3166 code. Raising an exception if it couldn't
    # be found.
    def self.get(identifier)
      load_index
      instance = @@countries[identifier]                   
      raise InvalidCountryCode.new, 'Invalid identifier' if instance.nil?
      instance        
    end
    
    # If identifier is a CountryInfo object, initializes the Country instance, 
    # otherwise calls get(identifier).
    def self.new(identifier)      
      if identifier.kind_of?(CountryInfo)
        instance = super()
        instance.send :setup, identifier
        instance
      else
        get(identifier)
      end
    end
    
    # Returns an Array of all the valid country codes.
    def self.all_codes
      load_index
      @@countries.keys      
    end
    
    # Returns an Array of all the defined Countries.
    def self.all
      load_index
      @@countries.values
    end       
    
    # The ISO 3166 country code.
    def code
      @info.code
    end
    
    # The name of the country.
    def name
      @info.name
    end
    
    # Alias for name.
    def to_s
      name
    end    
    
    # Returns a frozen array of all the zone identifiers for the country. These
    # are in an order that
    #   (1) makes some geographical sense, and
    #   (2) puts the most populous zones first, where that does not contradict (1).
    def zone_identifiers
      @info.zone_identifiers
    end
    alias zone_names zone_identifiers
    
    # An array of all the Timezones for this country. Returns TimezoneProxy
    # objects to avoid the overhead of loading Timezone definitions until
    # a conversion is actually required.
    def zones
      zone_identifiers.collect {|id|
        TimezoneProxy.new(id)
      }
    end        
        
    # Compare two Countries based on their code. Returns -1 if c is less
    # than self, 0 if c is equal to self and +1 if c is greater than self.
    def <=>(c)
      code <=> c.code
    end
    
    def _dump(limit)
      code
    end
    
    def self._load(data)
      Country.get(data)
    end
    
    private
      # Loads in the index of countries if it hasn't already been loaded.
      def self.load_index
        unless @@countries
          @@countries = {}
          require 'tzinfo/indexes/countries'          
        end
      end
      
      # Callback raised through CountryIndexDefinition as countries are
      # defined. Creates new Country instances.
      def self.country_defined(country_info)
        @@countries[country_info.code] = Country.new(country_info)
      end
      
      # Called by Country.new to initialize a new Country instance. The info
      # parameter is a CountryInfo that defines the country.
      def setup(info)
        @info = info        
      end
  end
  
  # The country index file includes CountryIndexDefinition which provides
  # a country method used to define each country in the index.
  module CountryIndexDefinition    
    def self.append_features(base)
      super
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      # Defines a country with an ISO 3166 country code, name and block. The
      # block will be evaluated to obtain all the timezones for the country.
      # Calls Country.country_defined with the definition of each country.
      def country(code, name, &block)
        country = CountryInfo.new(code, name, block)
        Country.send :country_defined, country
      end
    end
  end
  
  # Class to store the data loaded from the country index. Instances of this
  # class are passed to the blocks in the index that define timezones.
  class CountryInfo #:nodoc:
    attr_reader :code
    attr_reader :name
    
    # Constructs a new CountryInfo with an ISO 3166 country code, name and 
    # block. The block will be evaluated to obtain the timezones for the country
    # (when they are first needed).
    def initialize(code, name, block)
      @code = code
      @name = name
      @block = block
      @zone_identifiers = nil
    end
    
    # Called by the index data to define a timezone for the country.
    def timezone(identifier, latitude, longitude, description = nil)
      # Currently only store the identifiers.
      @zone_identifiers << identifier
    end
    
    # Returns a frozen array of all the zone identifiers for the country. These
    # are in an order that
    #   (1) makes some geographical sense, and
    #   (2) puts the most populous zones first, where that does not contradict (1).
    def zone_identifiers
      if @zone_identifiers.nil?
        @zone_identifiers = []
        @block.call(self)
        @block = nil
        @zone_identifiers.freeze
      end
      
      @zone_identifiers
    end
  end 
end
