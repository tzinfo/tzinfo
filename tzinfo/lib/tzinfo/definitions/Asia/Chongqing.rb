require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Chongqing < Timezone #:nodoc:
setup
set_identifier('Asia/Chongqing')
add_period(TimezonePeriod.new(nil,DateTime.new(1927,12,31,16,53,40),25580,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1927,12,31,16,53,40),DateTime.new(1980,4,30,17,0,0),25200,0,:'LONT'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,30,17,0,0),DateTime.new(1986,5,3,16,0,0),28800,0,:'CT'))
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
add_period(TimezonePeriod.new(DateTime.new(1991,9,14,15,0,0),DateTime.new(2045,9,3,22,38,45),28800,0,:'CST'))
end
end
end
end
