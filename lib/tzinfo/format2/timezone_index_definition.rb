module TZInfo
  module Format2
    # The format 2 timezone index file includes TimezoneIndexDefinition, which
    # provides methods used to define timezones in the index.
    #
    # @private
    module TimezoneIndexDefinition #:nodoc:
      # Add class methods to the includee and initialize class instance
      # variables.
      def self.append_features(base)
        super
        base.extend(ClassMethods)
        base.instance_eval do
          empty = [].freeze
          @timezones = empty
          @data_timezones = empty
          @linked_timezones = empty
        end
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        # Returns a frozen array containing the identifiers of all the
        # timezones. Identifiers are sorted according to String#<=>.
        attr_reader :timezones

        # Returns a frozen array containing the identifiers of all data
        # timezones. Identifiers are sorted according to String#<=>.
        attr_reader :data_timezones

        # Returns a frozen array containing the identifiers of all linked
        # timezones. Identifiers are sorted according to String#<=>.
        attr_reader :linked_timezones

        # Yields an instance of TimezoneIndexDefiner to the caller to be used
        # to define the index.
        def timezone_index
          definer = TimezoneIndexDefiner.new
          yield definer
          @data_timezones = definer.data_timezones.sort!.freeze
          @linked_timezones = definer.linked_timezones.sort!.freeze
          @timezones = (@data_timezones + @linked_timezones).sort!.freeze
        end
      end
    end
  end
end
