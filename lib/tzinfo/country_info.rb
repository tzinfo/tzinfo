module TZInfo
  # Represents a country and references to its timezones as returned by a
  # DataSource.
  class CountryInfo
    # The ISO 3166 country code.
    attr_reader :code

    # The name of the country.
    attr_reader :name

    # A frozen array of CountryTimezone instances.
    attr_reader :zones

    # Constructs a new CountryInfo with an ISO 3166 country code, name and Array
    # of CountryTimezone instances.
    #
    # The passed in zones Array will be frozen and a reference retained.
    def initialize(code, name, zones)
      @code = code
      @name = name
      @zones = zones.freeze
    end

    # Returns internal object state as a programmer-readable string.
    def inspect
      "#<#{self.class}: #@code>"
    end

    # Returns a frozen array of all the zone identifiers for the country.
    # The identifiers are ordered by importance according to the DataSource.
    def zone_identifiers
      @zones.map {|zone| zone.identifier }.freeze
    end
  end
end
