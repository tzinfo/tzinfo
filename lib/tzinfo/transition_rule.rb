# encoding: UTF-8
# frozen_string_literal: true

module TZInfo
  # Base class for rules definining the transition between standard and daylight
  # savings time.
  #
  # @abstract
  # @private
  class TransitionRule #:nodoc:
    # Returns the number of seconds after midnight local time on the day
    # identified by the rule at which the transition occurs. Can be negative to
    # denote a time on the prior day. Can be greater than or equal to 86,400 to
    # denote a time of the following day.
    #
    # @return [Integer] the time in seconds after midnight local time at which
    #   the transition occurs.
    attr_reader :transition_at

    # Initializes a new {TransitionRule}.
    #
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    def initialize(transition_at)
      raise ArgumentError, 'Invalid transition_at' unless transition_at.kind_of?(Integer)
      @transition_at = transition_at
    end

    # Calculates the time of the transition from a given offset on a given year.
    #
    # @param offset [TimezoneOffset] the current offset at the time the rule
    #   will transition.
    # @param year [Integer] the year in which the transition occurs (local
    #   time).
    # @return [TimestampWithOffset] the time at which the transition occurs.
    def at(offset, year)
      TimestampWithOffset.new(timestamp_value(offset, year), 0, offset.observed_utc_offset).set_timezone_offset(offset)
    end

    # Calculates the time of the transition from a given offset on a given year
    # as a number of seconds since 1970-01-01 00:00:00 UTC, without creating
    # the objects {at} returns.
    #
    # @param offset [TimezoneOffset] the current offset at the time the rule
    #   will transition.
    # @param year [Integer] the year in which the transition occurs (local
    #   time).
    # @return [Integer] the time at which the transition occurs.
    def timestamp_value(offset, year)
      get_day(year) * 86400 + @transition_at - offset.observed_utc_offset
    end

    # Determines if this {TransitionRule} is equal to another instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {TransitionRule} with the same
    #   {transition_at} as this {TransitionRule}, otherwise `false`.
    def ==(r)
      r.kind_of?(TransitionRule) && @transition_at == r.transition_at
    end
    alias eql? ==

    # @return [Integer] a hash based on {hash_args} (defaulting to
    #  {transition_at}).
    def hash
      hash_args.hash
    end

    protected

    # @return [Array] an `Array` of parameters that will influence the output of
    #  {hash}.
    def hash_args
      [@transition_at]
    end

    # Returns the number of days from 1970-01-01 to a date in the proleptic
    # Gregorian calendar, negative for dates before 1970-01-01. Based on
    # Howard Hinnant's `days_from_civil` algorithm. The day can be one past the
    # end of the month (for example, 29 February on a non-leap year is 1 March).
    #
    # @param year [Integer] the year.
    # @param month [Integer] the month (1 to 12).
    # @param day [Integer] the day of the month.
    # @return [Integer] the number of days from 1970-01-01.
    def days_since_epoch(year, month, day)
      year -= 1 if month <= 2
      era = year / 400
      year_of_era = year - era * 400
      day_of_year = (153 * ((month + 9) % 12) + 2) / 5 + day - 1
      day_of_era = year_of_era * 365 + year_of_era / 4 - year_of_era / 100 + day_of_year
      era * 146097 + day_of_era - 719468
    end

    # Returns the day of the week of a number of days from 1970-01-01.
    #
    # @param days [Integer] the number of days from 1970-01-01.
    # @return [Integer] the day of the week, 0 for Sunday to 6 for Saturday.
    def day_of_week_of(days)
      (days + 4) % 7
    end
  end
  private_constant :TransitionRule

  # A base class for transition rules that activate based on an integer day of
  # the year.
  #
  # @abstract
  # @private
  class DayOfYearTransitionRule < TransitionRule #:nodoc:
    # Initializes a new {DayOfYearTransitionRule}.
    #
    # @param day [Integer] the day of the year on which the transition occurs.
    #   The precise meaning is defined by subclasses.
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `day` is not an `Integer`.
    def initialize(day, transition_at)
      super(transition_at)
      raise ArgumentError, 'Invalid day' unless day.kind_of?(Integer)
      @seconds = day * 86400
    end

    # Determines if this {DayOfYearTransitionRule} is equal to another instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {DayOfYearTransitionRule} with the
    #   same {transition_at} and day as this {DayOfYearTransitionRule},
    #   otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(DayOfYearTransitionRule) && @seconds == r.seconds
    end
    alias eql? ==

    protected

    # @return [Integer] the day multipled by the number of seconds in a day.
    attr_reader :seconds

    # (see TransitionRule#hash_args)
    def hash_args
      [@seconds] + super
    end
  end
  private_constant :DayOfYearTransitionRule

  # Defines transitions that occur on the zero-based nth day of the year.
  #
  # Day 0 is 1 January.
  #
  # Leap days are counted. Day 59 will be 29 February on a leap year and 1 March
  # on a non-leap year. Day 365 will be 31 December on a leap year and 1 January
  # the following year on a non-leap year.
  #
  # @private
  class AbsoluteDayOfYearTransitionRule < DayOfYearTransitionRule #:nodoc:
    # Initializes a new {AbsoluteDayOfYearTransitionRule}.
    #
    # @param day [Integer] the zero-based day of the year on which the
    #   transition occurs (0 to 365 inclusive).
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `day` is not an `Integer`.
    # @raise [ArgumentError] if `day` is less than 0 or greater than 365.
    def initialize(day, transition_at = 0)
      super(day, transition_at)
      raise ArgumentError, 'Invalid day' unless day >= 0 && day <= 365
    end

    # @return [Boolean] `true` if the day specified by this transition is the
    #   first in the year (a day number of 0), otherwise `false`.
    def is_always_first_day_of_year?
      seconds == 0
    end

    # @return [Boolean] `false`.
    def is_always_last_day_of_year?
      false
    end

    # Determines if this {AbsoluteDayOfYearTransitionRule} is equal to another
    # instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {AbsoluteDayOfYearTransitionRule}
    #   with the same {transition_at} and day as this
    #   {AbsoluteDayOfYearTransitionRule}, otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(AbsoluteDayOfYearTransitionRule)
    end
    alias eql? ==

    protected

    # Returns the day specified by the rule for the given year.
    #
    # @param year [Integer] the year in which the transition occurs.
    # @return [Integer] the number of days from 1970-01-01 to the day specified
    #  by the rule for the given year.
    def get_day(year)
      days_since_epoch(year, 1, 1) + seconds / 86400
    end

    # (see TransitionRule#hash_args)
    def hash_args
      [AbsoluteDayOfYearTransitionRule] + super
    end
  end

  # Defines transitions that occur on the one-based nth Julian day of the year.
  #
  # Leap days are not counted. Day 1 is 1 January. Day 60 is always 1 March.
  # Day 365 is always 31 December.
  #
  # @private
  class JulianDayOfYearTransitionRule < DayOfYearTransitionRule #:nodoc:
    # The 60 days in seconds.
    LEAP = 60 * 86400
    private_constant :LEAP

    # The length of a non-leap year in seconds.
    YEAR = 365 * 86400
    private_constant :YEAR

    # Initializes a new {JulianDayOfYearTransitionRule}.
    #
    # @param day [Integer] the one-based Julian day of the year on which the
    #   transition occurs (1 to 365 inclusive).
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `day` is not an `Integer`.
    # @raise [ArgumentError] if `day` is less than 1 or greater than 365.
    def initialize(day, transition_at = 0)
      super(day, transition_at)
      raise ArgumentError, 'Invalid day' unless day >= 1 && day <= 365
    end

    # @return [Boolean] `true` if the day specified by this transition is the
    #   first in the year (a day number of 1), otherwise `false`.
    def is_always_first_day_of_year?
      seconds == 86400
    end

    # @return [Boolean] `true` if the day specified by this transition is the
    #   last in the year (a day number of 365), otherwise `false`.
    def is_always_last_day_of_year?
      seconds == YEAR
    end

    # Determines if this {JulianDayOfYearTransitionRule} is equal to another
    # instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {JulianDayOfYearTransitionRule} with
    #   the same {transition_at} and day as this
    #   {JulianDayOfYearTransitionRule}, otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(JulianDayOfYearTransitionRule)
    end
    alias eql? ==

    protected

    # Returns the day specified by the rule for the given year.
    #
    # @param year [Integer] the year in which the transition occurs.
    # @return [Integer] the number of days from 1970-01-01 to the day specified
    #  by the rule for the given year.
    def get_day(year)
      # 29 February is 1 March on non-leap years.
      leap = days_since_epoch(year, 2, 29)
      diff = (seconds - LEAP) / 86400
      diff += 1 if diff >= 0 && leap != days_since_epoch(year, 3, 1)
      leap + diff
    end

    # (see TransitionRule#hash_args)
    def hash_args
      [JulianDayOfYearTransitionRule] + super
    end
  end
  private_constant :JulianDayOfYearTransitionRule

  # A base class for rules that transition on a particular day of week of a
  # given week (subclasses specify which week of the month).
  #
  # @abstract
  # @private
  class DayOfWeekTransitionRule < TransitionRule #:nodoc:
    # Initializes a new {DayOfWeekTransitionRule}.
    #
    # @param month [Integer] the month of the year when the transition occurs.
    # @param day_of_week [Integer] the day of the week when the transition
    #   occurs. 0 is Sunday, 6 is Saturday.
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `month` is not an `Integer`.
    # @raise [ArgumentError] if `month` is less than 1 or greater than 12.
    # @raise [ArgumentError] if `day_of_week` is not an `Integer`.
    # @raise [ArgumentError] if `day_of_week` is less than 0 or greater than 6.
    def initialize(month, day_of_week, transition_at)
      super(transition_at)
      raise ArgumentError, 'Invalid month' unless month.kind_of?(Integer) && month >= 1 && month <= 12
      raise ArgumentError, 'Invalid day_of_week' unless day_of_week.kind_of?(Integer) && day_of_week >= 0 && day_of_week <= 6
      @month = month
      @day_of_week = day_of_week
    end

    # @return [Boolean] `false`.
    def is_always_first_day_of_year?
      false
    end

    # @return [Boolean] `false`.
    def is_always_last_day_of_year?
      false
    end

    # Determines if this {DayOfWeekTransitionRule} is equal to another
    # instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {DayOfWeekTransitionRule} with the
    #   same {transition_at}, month and day of week as this
    #   {DayOfWeekTransitionRule}, otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(DayOfWeekTransitionRule) && @month == r.month && @day_of_week == r.day_of_week
    end
    alias eql? ==

    protected

    # @return [Integer] the month of the year (1 to 12).
    attr_reader :month

    # @return [Integer] the day of the week (0 to 6 for Sunday to Monday).
    attr_reader :day_of_week

    # (see TransitionRule#hash_args)
    def hash_args
      [@month, @day_of_week] + super
    end
  end
  private_constant :DayOfWeekTransitionRule

  # A rule that transitions on the nth occurrence of a particular day of week
  # of a calendar month.
  #
  # @private
  class DayOfMonthTransitionRule < DayOfWeekTransitionRule #:nodoc:
    # Initializes a new {DayOfMonthTransitionRule}.
    #
    # @param month [Integer] the month of the year when the transition occurs.
    # @param week [Integer] the week of the month when the transition occurs (1
    #   to 4).
    # @param day_of_week [Integer] the day of the week when the transition
    #   occurs. 0 is Sunday, 6 is Saturday.
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `month` is not an `Integer`.
    # @raise [ArgumentError] if `month` is less than 1 or greater than 12.
    # @raise [ArgumentError] if `week` is not an `Integer`.
    # @raise [ArgumentError] if `week` is less than 1 or greater than 4.
    # @raise [ArgumentError] if `day_of_week` is not an `Integer`.
    # @raise [ArgumentError] if `day_of_week` is less than 0 or greater than 6.
    def initialize(month, week, day_of_week, transition_at = 0)
      super(month, day_of_week, transition_at)
      raise ArgumentError, 'Invalid week' unless week.kind_of?(Integer) && week >= 1 && week <= 4
      @offset_start = (week - 1) * 7 + 1
    end

    # Determines if this {DayOfMonthTransitionRule} is equal to another
    # instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {DayOfMonthTransitionRule} with the
    #   same {transition_at}, month, week and day of week as this
    #   {DayOfMonthTransitionRule}, otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(DayOfMonthTransitionRule) && @offset_start == r.offset_start
    end
    alias eql? ==

    protected

    # @return [Integer] the day the week starts on for a month starting on a
    #   Sunday.
    attr_reader :offset_start

    # Returns the day specified by the rule for the given year.
    #
    # @param year [Integer] the year in which the transition occurs.
    # @return [Integer] the number of days from 1970-01-01 to the day specified
    #  by the rule for the given year.
    def get_day(year)
      candidate = days_since_epoch(year, month, @offset_start)
      candidate + (day_of_week - day_of_week_of(candidate)) % 7
    end

    # (see TransitionRule#hash_args)
    def hash_args
      [@offset_start] + super
    end
  end
  private_constant :DayOfMonthTransitionRule

  # A rule that transitions on the last occurrence of a particular day of week
  # of a calendar month.
  #
  # @private
  class LastDayOfMonthTransitionRule < DayOfWeekTransitionRule #:nodoc:
    # Initializes a new {LastDayOfMonthTransitionRule}.
    #
    # @param month [Integer] the month of the year when the transition occurs.
    # @param day_of_week [Integer] the day of the week when the transition
    #   occurs. 0 is Sunday, 6 is Saturday.
    # @param transition_at [Integer] the time in seconds after midnight local
    #   time at which the transition occurs.
    # @raise [ArgumentError] if `transition_at` is not an `Integer`.
    # @raise [ArgumentError] if `month` is not an `Integer`.
    # @raise [ArgumentError] if `month` is less than 1 or greater than 12.
    # @raise [ArgumentError] if `day_of_week` is not an `Integer`.
    # @raise [ArgumentError] if `day_of_week` is less than 0 or greater than 6.
    def initialize(month, day_of_week, transition_at = 0)
      super(month, day_of_week, transition_at)
    end

    # Determines if this {LastDayOfMonthTransitionRule} is equal to another
    # instance.
    #
    # @param r [Object] the instance to test for equality.
    # @return [Boolean] `true` if `r` is a {LastDayOfMonthTransitionRule} with
    #   the same {transition_at}, month and day of week as this
    #   {LastDayOfMonthTransitionRule}, otherwise `false`.
    def ==(r)
      super(r) && r.kind_of?(LastDayOfMonthTransitionRule)
    end
    alias eql? ==

    protected

    # Returns the day specified by the rule for the given year.
    #
    # @param year [Integer] the year in which the transition occurs.
    # @return [Integer] the number of days from 1970-01-01 to the day specified
    #  by the rule for the given year.
    def get_day(year)
      next_month = month + 1
      if next_month == 13
        year += 1
        next_month = 1
      end

      candidate = days_since_epoch(year, next_month, 1) - 1
      candidate - (day_of_week_of(candidate) - day_of_week) % 7
    end
  end
  private_constant :LastDayOfMonthTransitionRule
end
