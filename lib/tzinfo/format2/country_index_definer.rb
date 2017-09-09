module TZInfo
  module Format2
    # Instances of Format2::CountryIndexDefiner are yielded to the format 2
    # version of TZInfo::Data::Indexes::Countries by CountryIndexDefinition to
    # allow countries and their timezones to be specified.
    #
    # @private
    class CountryIndexDefiner #:nodoc:
      # Returns a Hash of all the countries that have been defined in the index.
      attr_reader :countries

      # Initializes a new CountryIndexDefiner.
      def initialize
        @shared_timezones = {}
        @countries = {}
      end

      # Defines a timezone shared by many countries with a reference for
      # subsequent use in country definitions. The timezone is defined with its
      # identifier, latitude, longitude and description. The latitude and
      # longitude are given as the numerator and denominator of a Rational.
      def timezone(reference, identifier, latitude_numerator, latitude_denominator,
                    longitude_numerator, longitude_denominator, description = nil)
        @shared_timezones[reference] = CountryTimezone.new(identifier,
          Rational(latitude_numerator, latitude_denominator),
          Rational(longitude_numerator, longitude_denominator), description)
      end

      # Defines a country with an ISO 3166 country code and name. A
      # CountryDefiner instance is yielded to obtain the timezones for the
      # country.
      def country(code, name)
        timezones = if block_given?
          definer = CountryDefiner.new(@shared_timezones)
          yield definer
          definer.timezones
        else
          []
        end
        @countries[code.freeze] = DataSources::CountryInfo.new(code, name, timezones)
      end
    end
  end
end
