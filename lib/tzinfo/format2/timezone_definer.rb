# frozen_string_literal: true

module TZInfo
  module Format2
    # Instances of TimezoneDefiner are yielded to TZInfo::Data modules by
    # TimezoneDefinition to allow the offsets and transitions of the time zone to
    # be specified.
    #
    # @private
    class TimezoneDefiner #:nodoc:
      # An Array of TimezoneTransition instances representing the transitions
      # that have been defined.
      attr_reader :transitions

      # Creates a new TimezoneDefiner.
      def initialize
        @offsets = {}
        @transitions = []
      end

      # Returns the first offset to be defined as a TimezoneOffset or nil if no
      # offsets have been defined. The first offset is observed before the time
      # of the first transition.
      def first_offset
        first = @offsets.first
        first && first.last
      end

      # Defines an offset.
      #
      # id is an arbitrary value used identify the offset in subsequent calls to
      # transition. It must be unique.
      #
      # utc_offset is an Integer giving the base offset from UTC of the zone in
      # seconds. This does not include daylight savings time.
      #
      # std_offset is an Integer giving the daylight savings offset from the
      # base offset in seconds. Typically either 0 or 3600.
      #
      # abbreviation is a Symbol giving the an abbreviation for the offset, for
      # example, :EST or :EDT.
      #
      # Raises ArgumentError if another offset has already been defined with the
      # given id.
      def offset(id, utc_offset, std_offset, abbreviation)
        raise ArgumentError, 'An offset has already been defined with the given id' if @offsets.has_key?(id)
        offset = TimezoneOffset.new(utc_offset, std_offset, abbreviation)
        @offsets[id] = offset
        @previous_offset ||= offset
      end

      # Defines a transition to a given offset.
      #
      # offset_id references the id of a previously defined offset.
      #
      # timestamp_value is the time the transition occurs as an Integer number
      # of seconds since 1970-01-01 00:00:00 UTC ignoring leap seconds (i.e.
      # each day is treated as if it were 86,400 seconds long).
      #
      # Transitions must be defined in increasing time order.
      #
      # Raises ArgumentError if offset_id does not reference a defined offset.
      #
      # Raises ArgumentError if timestamp_value is not greater than the
      # timestamp_value of the previously defined transtion.
      def transition(offset_id, timestamp_value)
        offset = @offsets[offset_id]
        raise ArgumentError, 'offset_id has not been defined' unless offset
        raise ArgumentError, 'timestamp is not greater than the timestamp of the previously defined transition' if !@transitions.empty? && @transitions.last.timestamp_value >= timestamp_value
        @transitions << TimezoneTransition.new(offset, @previous_offset, timestamp_value)
        @previous_offset = offset
      end
    end
  end
end
