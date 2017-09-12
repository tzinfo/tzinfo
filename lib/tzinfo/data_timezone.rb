# frozen_string_literal: true

module TZInfo

  # A Timezone based on a DataSources::DataTimezoneInfo.
  class DataTimezone < InfoTimezone

    # Returns the TimezonePeriod for the given time. time can either be
    # a Time, DateTime or Timestamp.
    #
    # The UTC offset of time is taken into account.
    #
    # Raises ArgumentError if time is nil or a Timestamp with an unspecified
    # offset.
    def period_for(time)
      raise ArgumentError, 'time must not be nil' unless time
      timestamp = Timestamp.for(time)
      raise ArgumentError, 'time must have a specified utc_offset' unless timestamp.utc_offset
      info.period_for(timestamp)
    end

    # Returns the set of TimezonePeriod instances that are valid for the given
    # local time as an array. local_time can be specified using either a Time,
    # DateTime or Timestamp. The UTC offset of local_time is ignored (it is
    # treated as a time in the current timezone).
    #
    # An empty array is returned if no periods are found for the given time.
    #
    # Raises ArgumentError if local_time is nil.
    def periods_for_local(local_time)
      raise ArgumentError, 'local_time must not be nil' unless local_time
      info.periods_for_local(Timestamp.for(local_time, offset: :ignore))
    end

    # Returns an Array of TimezoneTransition instances representing the times
    # where the UTC offset of the timezone changes.
    #
    # Transitions are returned up to a given date and time up to a given date
    # and time (to).
    #
    # A from date and time may also be supplied using the from parameter. If
    # from is not nil, only transitions from that date and time onwards will be
    # returned.
    #
    # Comparisons with to are exclusive. Comparisons with from are inclusive.
    # If a transition falls precisely on to, it will be excluded. If a
    # transition falls on from, it will be included.
    #
    # Transitions returned are ordered by when they occur, from earliest to
    # latest.
    #
    # to and from can be specified using either a Time, DateTime, Time or
    # Timestamp.
    #
    # If from is specified and to is not greater than from, then an
    # ArgumentError exception is raised.
    #
    # ArgumentError is raised if to is nil or of either to or from are
    # Timestamps with unspecified offsets.
    def transitions_up_to(to, from = nil)
      raise ArgumentError, 'to must not be nil' unless to
      to_timestamp = Timestamp.for(to)
      from_timestamp = from && Timestamp.for(from)
      raise ArgumentError, 'to must have a specified utc_offset' unless to_timestamp.utc_offset
      raise ArgumentError, 'from must have a specified utc_offset' if from_timestamp && !from_timestamp.utc_offset

      info.transitions_up_to(to_timestamp, from_timestamp)
    end

    # Returns the canonical zone for this Timezone.
    #
    # For a DataTimezone, this is always self.
    def canonical_zone
      self
    end
  end
end
