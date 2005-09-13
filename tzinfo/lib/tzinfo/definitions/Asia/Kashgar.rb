require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kashgar < Timezone #:nodoc:
setup
set_identifier('Asia/Kashgar')
add_period(TimezonePeriod.new(nil,DateTime.new(1927,12,31,18,56,4),18236,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1927,12,31,18,56,4),DateTime.new(1939,12,31,18,30,0),19800,0,:'KAST'))
add_period(TimezonePeriod.new(DateTime.new(1939,12,31,18,30,0),DateTime.new(1980,4,30,19,0,0),18000,0,:'KAST'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,30,19,0,0),DateTime.new(1986,5,3,16,0,0),28800,0,:'CT'))
add_period(TimezonePeriod.new(DateTime.new(1986,5,3,16,0,0),DateTime.new(1986,9,13,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1986,9,13,15,0,0),DateTime.new(1987,4,11,16,0,0),28800,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1987,4,11,16,0,0),DateTime.new(1987,9,12,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,12,15,0,0),DateTime.new(1988,4,9,16,0,0),28800,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1988,4,9,16,0,0),DateTime.new(1988,9,10,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,10,15,0,0),DateTime.new(1989,4,15,16,0,0),28800,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1989,4,15,16,0,0),DateTime.new(1989,9,16,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,16,15,0,0),DateTime.new(1990,4,14,16,0,0),28800,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1990,4,14,16,0,0),DateTime.new(1990,9,15,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,15,15,0,0),DateTime.new(1991,4,13,16,0,0),28800,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1991,4,13,16,0,0),DateTime.new(1991,9,14,15,0,0),28800,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,14,15,0,0),DateTime.new(2045,9,3,22,39,43),28800,0,:'CST'))
end
end
end
end
