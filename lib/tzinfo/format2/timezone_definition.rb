module TZInfo
  module Format2
    # {Format2::TimezoneDefinition} is included into format 2 time zone
    # definition modules and provides methods for defining time zones.
    #
    # @private
    module TimezoneDefinition #:nodoc:
      # Adds class methods to the includee.
      #
      # @param base [Module] the includee.
      def self.append_features(base)
        super
        base.extend(ClassMethods)
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        # @return [TimezoneInfo] the last time zone to be defined.
        def get
          @timezone
        end

        private

        # @return [Class] the class to be instantiated and yielded by
        #   {#timezone}.
        def timezone_definer_class
          TimezoneDefiner
        end

        # Defines a data time zone.
        #
        # @param identifier [String] the identifier of the time zone.
        # @yield [definer] yields to the caller to define the time zone.
        # @yieldparam definer [Object] an instance of the class returned by
        #   {#timezone_definer_class}, typically {TimezoneDefiner}.
        def timezone(identifier)
          definer = timezone_definer_class.new
          yield definer
          transitions = definer.transitions
          @timezone = if transitions.empty?
            DataSources::ConstantOffsetDataTimezoneInfo.new(identifier, definer.first_offset)
          else
            DataSources::TransitionsDataTimezoneInfo.new(identifier, transitions)
          end
        end

        # Defines a linked time zone.
        #
        # @param identifier [String] the identifier of the time zone being
        #   defined.
        # @param link_to_identifier [String] the identifier the new time zone
        #   links to (is an alias for).
        def linked_timezone(identifier, link_to_identifier)
          @timezone = DataSources::LinkedTimezoneInfo.new(identifier, link_to_identifier)
        end
      end
    end
  end
end
