module TZInfo

  # TimezoneDefinition is included into Timezone definition modules.
  # TimezoneDefinition provides the methods for defining timezones.
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

      # Returns and yields a TransitionDataTimezoneInfo object to define a
      # timezone.
      def timezone(identifier)
        definer = TimezoneDefinerFormat1.new
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
