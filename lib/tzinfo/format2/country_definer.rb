# frozen_string_literal: true

module TZInfo
  module Format2
    # Instances of {Format2::CountryDefiner} are yielded to the format 2 version
    # of `TZInfo::Data::Indexes::Countries` by {CountryIndexDefiner} to allow
    # the zones of a country to be specified.
    #
    # @private
    class CountryDefiner #:nodoc:
      # @return [Array<CountryTimezone>] the time zones observed in the country.
      attr_reader :timezones

      # Initializes a new {CountryDefiner}.
      #
      # @param shared_timezones [Hash<Symbol, CountryTimezone>] a `Hash`
      #   containing time zones shared by more than one country, keyed by a
      #   unique reference.
      def initialize(shared_timezones)
        @shared_timezones = shared_timezones
        @timezones = []
      end

      # @overload timezone(reference)
      #   Defines a time zone of a country as a reference to a pre-defined
      #   shared time zone.
      #   @param reference [Symbol] a reference for a pre-defined shared time zone.
      # @overload timezone(identifier, latitude_numerator, latitude_denominator, longitude_numerator, longitude_denominator, description)
      #   Defines a (non-shared) time zone of a country. The latitude and
      #   longitude are given as the numerator and denominator of a `Rational`.
      #   @param identifier [String] the time zone identifier.
      #   @param latitude_numerator [Integer] the numerator of the latitude.
      #   @param latitude_denominator [Integer] the denominator of the latitude.
      #   @param longitude_numerator [Integer] the numerator of the longitude.
      #   @param longitude_denominator [Integer] the denominator of the longitude.
      #   @param description [String] an optional description for the time zone.
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
