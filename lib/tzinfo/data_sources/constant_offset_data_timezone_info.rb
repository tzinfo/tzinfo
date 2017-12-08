# frozen_string_literal: true

module TZInfo
  module DataSources
    # Represents a data timezone defined by a constantly observed offset.
    class ConstantOffsetDataTimezoneInfo < DataTimezoneInfo
      # The offset constantly observed as a TimezoneOffset.
      attr_reader :constant_offset

      # Constructs a new ConstantOffsetDataTimezoneInfo with its identifier anda
      # TimezoneOffset that is constantly observed.
      #
      # A reference to the passed in TimezoneOffset will be retained.
      #
      # Raises ArgumentError if identifier or constant_offset are nil.
      def initialize(identifier, constant_offset)
        super(identifier)
        raise ArgumentError, 'constant_offset must be specified' unless constant_offset
        @constant_offset = constant_offset
      end

      # Returns the unbounded TimezonePeriod for the timezone's constantly
      # observed offset.
      def period_for(timestamp)
        constant_period
      end

      # Returns an Array containing a single unbounded TimezonePeriod for the
      # timezone's constantly observed offset.
      def periods_for_local(local_timestamp)
        [constant_period]
      end

      # Returns an empty Array, since there are no transitions if timezones that
      # observe a constant offset.
      def transitions_up_to(to_timestamp, from_timestamp = nil)
        []
      end

      private

      # Returns a TimezonePeriod with the constant offset of this timezone.
      def constant_period
        OffsetTimezonePeriod.new(@constant_offset)
      end
    end
  end
end
