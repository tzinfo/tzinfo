module TZInfo
  module Format1
    # Format1::TimezoneDefinition is included into format 1 Timezone definition
    # modules and provides the methods for defining timezones.
    #
    # @private
    module TimezoneDefinition #:nodoc:
      # Add class methods to the includee.
      def self.append_features(base)
        super
        base.extend(Format2::TimezoneDefinition::ClassMethods)
        base.extend(ClassMethods)
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        private

        # Returns the class to be instantiated and yielded by timezone.
        def timezone_definer_class
          TimezoneDefiner
        end
      end
    end
  end

  # Alias used by TZInfo::Data format1 releases.
  TimezoneDefinition = Format1::TimezoneDefinition
end
