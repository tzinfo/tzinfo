require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Brisbane < Timezone #:nodoc:
def initialize
  super
set_identifier('Australia/Brisbane')
add_period(TimezonePeriod.new(nil,DateTime.new(1894,12,31,13,47,52),36728,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1894,12,31,13,47,52),DateTime.new(1916,12,31,14,1,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1916,12,31,14,1,0),DateTime.new(1917,3,24,15,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1917,3,24,15,0,0),DateTime.new(1941,12,31,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,31,16,0,0),DateTime.new(1942,3,28,15,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,28,15,0,0),DateTime.new(1942,9,26,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,26,16,0,0),DateTime.new(1943,3,27,15,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,27,15,0,0),DateTime.new(1943,10,2,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1943,10,2,16,0,0),DateTime.new(1944,3,25,15,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,25,15,0,0),DateTime.new(1970,12,31,14,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1970,12,31,14,0,0),DateTime.new(1971,10,30,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,30,16,0,0),DateTime.new(1972,2,26,16,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1972,2,26,16,0,0),DateTime.new(1989,10,28,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,28,16,0,0),DateTime.new(1990,3,3,16,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,3,16,0,0),DateTime.new(1990,10,27,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1990,10,27,16,0,0),DateTime.new(1991,3,2,16,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,2,16,0,0),DateTime.new(1991,10,26,16,0,0),36000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1991,10,26,16,0,0),DateTime.new(1992,2,29,16,0,0),36000,3600,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1992,2,29,16,0,0),DateTime.new(2045,8,19,20,38,45),36000,0,'EST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
