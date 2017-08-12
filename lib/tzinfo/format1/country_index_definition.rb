module TZInfo
  module Format1
    # The format 1 country index file includes Format1::CountryIndexDefinition,
    # which provides a country method used to define each country in the index.
    #
    # @private
    module CountryIndexDefinition #:nodoc:
      # Add class methods to the includee and initialize class instance variables.
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

        # Defines a country with an ISO 3166 country code and name. If a block
        # is supplied, a CountryDefinerFormat instance is yielded to obtain the
        # timezones for the country.
        def country(code, name)
          zones = if block_given?
            definer = CountryDefiner.new
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

  # Alias used by TZInfo::Data format1 releases.
  CountryIndexDefinition = Format1::CountryIndexDefinition
end
