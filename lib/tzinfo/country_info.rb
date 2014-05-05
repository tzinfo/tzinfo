module TZInfo  
  # Represents a country and references to its timezones as returned by a
  # DataSource.
  class CountryInfo
    # The ISO 3166 country code.
    attr_reader :code
    
    # The name of the country.
    attr_reader :name
    
    # Constructs a new CountryInfo with an ISO 3166 country code and name
    def initialize(code, name)
      @code = code
      @name = name
    end
    
    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #@code>"
    end
    
    # Returns a frozen array of all the zone identifiers for the country.
    # The identifiers are ordered by importance according to the DataSource.
    def zone_identifiers
      raise NotImplementedError, 'Subclasses must override zone_identifiers'
    end
    
    # Returns a frozen array of all the timezones for the for the country as
    # CountryTimezone instances.
    #
    # The timezones are ordered by importance according to the DataSource.
    def zones
      raise NotImplementedError, 'Subclasses must override zone_identifiers'
    end
  end
end
