require 'tzinfo/timezone_period'

module TZInfo
  # Thrown to indicate that no TimezonePeriod matching a given time could be found.
  class PeriodNotFound < StandardError
  end

  # A list of TimezonePeriod instances defining a Timezone.
  class TimezonePeriodList
    # Initializes a new TimezonePeriodList
    def initialize
      raise 'Not Implemented'
    end
    
    # Adds a new TimezonePeriod to the list. utc_start_year and utc_start_month
    # are the year and month in which the period starts in UTC. A block must
    # be passed in that will return the TimezonePeriod when called with no
    # arguments.
    #
    # If the start year and month are less than the previously encountered
    # year and month ArgumentError will be thrown.
    def add(utc_start_year, utc_start_month, &block)
      raise 'Not Implemented'
    end
    
    # Returns the period for the given utc time. The earliest and latest periods
    # are considered to be unbounded.
    # If there are no periods, PeriodNotFound is thrown.
    def period_for_utc(utc)
      raise 'Not Implemented'
    end
    
    # Returns the set of periods for the given local time as an array. The 
    # earliest and latest periods are considered to be unbounded.
    def periods_for_local(local)
      raise 'Not Implemented'
    end
  end
end
