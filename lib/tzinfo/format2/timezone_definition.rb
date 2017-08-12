module TZInfo
  module Format2
    # Format2::TimezoneDefinition is included into format 2 Timezone definition
    # modules and provides methods for defining timezones.
    #
    # @private
    module TimezoneDefinition #:nodoc:
      # Add class methods to the includee.
      def self.append_features(base)
        super
        base.extend(ClassMethods)
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        # Returns the last TimezoneInfo to be defined with timezone or
        # linked_timezone.
        def get
          @timezone
        end

        private

        # Returns the class to be instantiated and yielded by timezone.
        def timezone_definer_class
          TimezoneDefiner
        end

        # Creates a TimezoneDefiner instance and yields it to the caller in order
        # to define the timezone.
        def timezone(identifier)
          definer = timezone_definer_class.new
          yield definer
          transitions = definer.transitions
          @timezone = TransitionDataTimezoneInfo.new(identifier, transitions.empty? ? definer.first_offset : transitions)
        end

        # Defines a linked timezone.
        def linked_timezone(identifier, link_to_identifier)
          @timezone = LinkedTimezoneInfo.new(identifier, link_to_identifier)
        end
      end
    end
  end
end
