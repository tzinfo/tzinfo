module TZInfo
  module Format2
    # The format 2 country index file includes CountryIndexDefinition2, which
    # provides a country_index method used to define the country index.
    #
    # @private
    module CountryIndexDefinition #:nodoc:
      # Add class methods to the includee and initialize class instance
      # variables.
      def self.append_features(base)
        super
        base.extend(ClassMethods)
        base.instance_eval { @countries = {}.freeze }
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        # Returns a frozen hash of all the countries that have been defined in
        # the index.
        attr_reader :countries

        private

        # Yields a CountryIndexDefiner instance to define the index.
        def country_index
          definer = CountryIndexDefiner.new
          yield definer
          @countries = definer.countries.freeze
        end
      end
    end
  end
end
