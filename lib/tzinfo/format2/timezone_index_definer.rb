module TZInfo
  module Format2
    # Instances of {TimezoneIndexDefiner} are yielded by
    # {TimezoneIndexDefinition} to allow the time zone index to be defined.
    #
    # @private
    class TimezoneIndexDefiner #:nodoc:
      # @return [Array<String>] Returns the identifiers of all data time zones.
      attr_reader :data_timezones

      # @return [Array<String>] Returns the identifiers of all linked time
      #   zones.
      attr_reader :linked_timezones

      # Initializes a new TimezoneDefiner.
      def initialize
        @data_timezones = []
        @linked_timezones = []
      end

      # Adds a data time zone to the index.
      #
      # @param identifier [String] the time zone identifier.
      def data_timezone(identifier)
        @data_timezones << identifier.freeze
      end

      # Adds a linked time zone to the index.
      #
      # @param identifier [String] the time zone identifier.
      def linked_timezone(identifier)
        @linked_timezones << identifier.freeze
      end
    end
  end
end
