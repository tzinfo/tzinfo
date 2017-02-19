module TZInfo
  # Instances of CountryDefinerFormat1 are yielded to
  # TZInfo::Data::Indexes::Countries by CountryIndexDefinition to allow the
  # zones of a country to be specified.
  #
  # @private
  class CountryDefinerFormat1 #:nodoc:
    attr_reader :timezones

    def initialize
      @timezones = []
    end

    # Defines a timezone of a country with the given identifier, latitude,
    # longitude and description. The latitude and longitude are given as the
    # numerator and denominator of a Rational.
    def timezone(identifier, latitude_numerator, latitude_denominator,
                  longitude_numerator, longitude_denominator, description = nil)
      @timezones << CountryTimezone.new(identifier,
        Rational(latitude_numerator, latitude_denominator),
        Rational(longitude_numerator, longitude_denominator), description)
    end
  end
end
