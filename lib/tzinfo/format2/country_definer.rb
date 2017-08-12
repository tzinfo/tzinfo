module TZInfo
  module Format2
    # Instances of Format2::CountryDefiner are yielded to the format 2 version
    # of TZInfo::Data::Indexes::Countries by CountryIndexDefiner to allow the
    # zones of a country to be specified.
    #
    # @private
    class CountryDefiner #:nodoc:
      # The timezones that have defined as CountryTimezone instances.
      attr_reader :timezones

      # Initializes a new CountryDefiner with a Hash containing shared
      # CountryTimezone instances, keyed by an alias.
      def initialize(shared_timezones)
        @shared_timezones = shared_timezones
        @timezones = []
      end

      # Defines a timezone of a country either using a given identifier, latitude,
      # longitude and description, or as a reference to a pre-defined shared
      # timezone. The latitude and longitude are given as the numerator and
      # denominator of a Rational.
      def timezone(identifier_or_reference, latitude_numerator = nil,
                  latitude_denominator = nil, longitude_numerator = nil,
                  longitude_denominator = nil, description = nil)
        if latitude_numerator
          unless latitude_denominator && longitude_numerator && longitude_denominator
            raise ArgumentError, 'Either just a reference should be supplied, or the identifier, latitude and longitude must all be specified'
          end
          @timezones << CountryTimezone.new(identifier_or_reference,
            Rational(latitude_numerator, latitude_denominator),
            Rational(longitude_numerator, longitude_denominator), description)
        else
          shared_timezone = @shared_timezones[identifier_or_reference]
          raise ArgumentError, "Unknown shared timezone: #{identifier_or_reference}" unless shared_timezone
          @timezones << shared_timezone
        end
      end
    end
  end
end
