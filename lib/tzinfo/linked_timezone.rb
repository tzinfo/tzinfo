module TZInfo

  # A Timezone based on a LinkedTimezoneInfo.
  #
  # @private
  class LinkedTimezone < InfoTimezone #:nodoc:
    # Constructs a new LinkedTimezone with a LinkedTimezoneInfo instance.
    def initialize(info)
      super
      @linked_timezone = Timezone.get(info.link_to_identifier)
    end

    # Returns the TimezonePeriod for the given time. time can either be
    # a Time, DateTime or Timestamp.
    #
    # The UTC offset of time is taken into account.
    #
    # Raises ArgumentError if time is nil or a Timestamp with an unspecified
    # offset.
    def period_for(time)
      @linked_timezone.period_for(time)
    end

    # Returns the set of TimezonePeriod instances that are valid for the given
    # local time as an array by calling periods_for_local on the linked
    # timezone. local_time can be specified using either a Time, DateTime or
    # Timestamp. The UTC offset of local_time is ignored (it is treated as a
    # time in the current timezone).
    #
    # An empty array is returned if no periods are found for the given time.
    #
    # Raises ArgumentError if local_time is nil.
    def periods_for_local(local_time)
      @linked_timezone.periods_for_local(local_time)
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
      @linked_timezone.transitions_up_to(to, from)
    end

    # Returns the canonical zone for this Timezone.
    #
    # For a LinkedTimezone, this is the canonical zone of the link target.
    def canonical_zone
      @linked_timezone.canonical_zone
    end
  end
end
