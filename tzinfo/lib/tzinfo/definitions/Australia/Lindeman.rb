require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Lindeman < Timezone #:nodoc:
setup
set_identifier('Australia/Lindeman')
add_period(TimezonePeriod.new(nil,DateTime.new(1894,12,31,14,4,4),35756,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1894,12,31,14,4,4),DateTime.new(1916,12,31,14,1,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1916,12,31,14,1,0),DateTime.new(1917,3,24,15,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1917,3,24,15,0,0),DateTime.new(1941,12,31,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,31,16,0,0),DateTime.new(1942,3,28,15,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,28,15,0,0),DateTime.new(1942,9,26,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,26,16,0,0),DateTime.new(1943,3,27,15,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,27,15,0,0),DateTime.new(1943,10,2,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1943,10,2,16,0,0),DateTime.new(1944,3,25,15,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,25,15,0,0),DateTime.new(1970,12,31,14,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1970,12,31,14,0,0),DateTime.new(1971,10,30,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,30,16,0,0),DateTime.new(1972,2,26,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1972,2,26,16,0,0),DateTime.new(1989,10,28,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,28,16,0,0),DateTime.new(1990,3,3,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,3,16,0,0),DateTime.new(1990,10,27,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1990,10,27,16,0,0),DateTime.new(1991,3,2,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,2,16,0,0),DateTime.new(1991,10,26,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1991,10,26,16,0,0),DateTime.new(1992,2,29,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1992,2,29,16,0,0),DateTime.new(1992,6,30,14,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1992,6,30,14,0,0),DateTime.new(1992,10,24,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1992,10,24,16,0,0),DateTime.new(1993,3,6,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1993,3,6,16,0,0),DateTime.new(1993,10,30,16,0,0),36000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1993,10,30,16,0,0),DateTime.new(1994,3,5,16,0,0),36000,3600,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1994,3,5,16,0,0),DateTime.new(2045,9,3,22,29,1),36000,0,:'EST'))
end
end
end
end
