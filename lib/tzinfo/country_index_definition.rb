module TZInfo
  # The country index file includes CountryIndexDefinition which provides
  # a country method used to define each country in the index.
  #
  # @private
  module CountryIndexDefinition #:nodoc:
    def self.append_features(base)
      super
      base.extend(ClassMethods)
      base.instance_eval { @countries = {} }
    end

    # Class methods for inclusion.
    #
    # @private
    module ClassMethods #:nodoc:
      # Returns a frozen hash of all the countries that have been defined in
      # the index.
      def countries
        @countries.freeze
      end

      private

      # Defines a country with an ISO 3166 country code, name and block. The
      # block will be evaluated to obtain all the timezones for the country.
      def country(code, name)
        zones = if block_given?
          definer = CountryDefinerFormat1.new
          yield definer
          definer.timezones
        else
          []
        end

        @countries[code.freeze] = CountryInfo.new(code, name, zones)
      end
    end
  end
end
