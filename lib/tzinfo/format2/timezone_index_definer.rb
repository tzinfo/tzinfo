module TZInfo
  module Format2
    # Instances of TimezoneIndexDefiner are yielded to TZInfo::Data modules by
    # TimezoneIndexDefinition to allow the offsets and transitions of the
    # timezone to be specified.
    #
    # @private
    class TimezoneIndexDefiner #:nodoc:
      # Returns an array containing the identifiers of all data timezones.
      attr_reader :data_timezones

      # Returns an array containing the identifiers of all linked timezones.
      attr_reader :linked_timezones

      # Creates a new TimezoneDefiner.
      def initialize
        @data_timezones = []
        @linked_timezones = []
      end

      # Defines a timezone based on data.
      def data_timezone(identifier)
        @data_timezones << identifier.freeze
      end

      # Defines a timezone which is a link to another timezone.
      def linked_timezone(identifier)
        @linked_timezones << identifier.freeze
      end
    end
  end
end
