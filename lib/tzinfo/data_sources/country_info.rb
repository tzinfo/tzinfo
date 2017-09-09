module TZInfo
  module DataSources
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
      # The passed in code, name and zones instances will be frozen.
      def initialize(code, name, zones)
        @code = code.freeze
        @name = name.freeze
        @zones = zones.freeze
      end

      # Returns the internal object state as a programmer-readable string.
      def inspect
        "#<#{self.class}: #@code>"
      end
    end
  end
end
