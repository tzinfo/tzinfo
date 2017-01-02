module TZInfo
  # Represents a defined timezone containing transition data.
  class DataTimezoneInfo < TimezoneInfo

    # Returns the TimezonePeriod for the given Timestamp. The Timestamp must
    # have a specified utc_offset.
    #
    # Raises ArgumentError if timestamp is nil or does not have a specified
    # utc_offset.
    def period_for(timestamp)
      raise_not_implemented('period_for_utc')
    end

    # Returns an array containing the valid TimezonePeriods for the given local
    # Timestamp. The Timestamp must have an unspecified utc_offset. The results
    # returned are ordered by increasing UTC start date. An empty array is
    # returned if no periods are found for the given time.
    def periods_for_local(local_timestamp)
      raise_not_implemented('periods_for_local')
    end

    # Returns an Array of TimezoneTransition instances representing the times
    # where the UTC offset of the timezone changes.
    #
    # Transitions are returned up to a given Timestamp (to_timestamp).
    #
    # A from Timestamp may also be supplied using the from_timestamp parameter.
    # If from_timestamp is not nil, only transitions from that time will be
    # returned.
    #
    # Comparisons with to_timestamp are exclusive. Comparisons with from are
    # inclusive. If a transition falls precisely on to_timestamp, it will be
    # excluded. If a transition falls on from_timestamp, it will be included.
    #
    # Transitions returned are ordered by when they occur, from earliest to
    # latest.
    #
    # If from_timestamp is specified and to_timestamp is not greater than
    # from_timestamp, then transitions_up_to raises an ArgumentError exception.
    def transitions_up_to(to_timestamp, from_timestamp = nil)
      raise_not_implemented('transitions_up_to')
    end

    # Constructs a Timezone instance for the timezone represented by this
    # DataTimezoneInfo.
    def create_timezone
      DataTimezone.new(self)
    end

    private

    def raise_not_implemented(method_name)
      raise NotImplementedError, "Subclasses must override #{method_name}"
    end
  end
end
