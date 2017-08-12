module TZInfo
  module Format1
    # The format 1 timezone index file includes
    # Format1::TimezoneIndexDefinition, which provides methods used to define
    # timezones in the index.
    #
    # @private
    module TimezoneIndexDefinition #:nodoc:
      # Add class methods to the includee and initialize class instance variables.
      def self.append_features(base)
        super
        base.extend(ClassMethods)
        base.instance_eval do
          @timezones = []
          @data_timezones = []
          @linked_timezones = []
        end
      end

      # Class methods for inclusion.
      #
      # @private
      module ClassMethods #:nodoc:
        # Returns a frozen array containing the identifiers of all the timezones.
        # Identifiers are sorted according to String#<=>.
        def timezones
          unless @timezones.frozen?
            @timezones = @timezones.sort.freeze
          end
          @timezones
        end

        # Returns a frozen array containing the identifiers of all data timezones.
        # Identifiers are sorted according to String#<=>.
        def data_timezones
          unless @data_timezones.frozen?
            @data_timezones = @data_timezones.sort.freeze
          end
          @data_timezones
        end

        # Returns a frozen array containing the identifiers of all linked
        # timezones. Identifiers are sorted according to String#<=>.
        def linked_timezones
          unless @linked_timezones.frozen?
            @linked_timezones = @linked_timezones.sort.freeze
          end
          @linked_timezones
        end

        private

        # Defines a timezone based on data.
        def timezone(identifier)
          identifier.freeze
          @timezones << identifier
          @data_timezones << identifier
        end

        # Defines a timezone which is a link to another timezone.
        def linked_timezone(identifier)
          identifier.freeze
          @timezones << identifier
          @linked_timezones << identifier
        end
      end
    end
  end

  # Alias used by TZInfo::Data format1 releases.
  TimezoneIndexDefinition = Format1::TimezoneIndexDefinition
end
