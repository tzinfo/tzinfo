require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Efate < Timezone #:nodoc:
setup
set_identifier('Pacific/Efate')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,12,12,46,44),40396,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,12,12,46,44),DateTime.new(1983,9,24,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,24,13,0,0),DateTime.new(1984,3,24,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,24,12,0,0),DateTime.new(1984,10,22,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1984,10,22,13,0,0),DateTime.new(1985,3,23,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1985,3,23,12,0,0),DateTime.new(1985,9,28,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1985,9,28,13,0,0),DateTime.new(1986,3,22,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,22,12,0,0),DateTime.new(1986,9,27,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1986,9,27,13,0,0),DateTime.new(1987,3,28,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,28,12,0,0),DateTime.new(1987,9,26,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,26,13,0,0),DateTime.new(1988,3,26,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,26,12,0,0),DateTime.new(1988,9,24,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,24,13,0,0),DateTime.new(1989,3,25,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,25,12,0,0),DateTime.new(1989,9,23,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,23,13,0,0),DateTime.new(1990,3,24,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,24,12,0,0),DateTime.new(1990,9,22,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,22,13,0,0),DateTime.new(1991,3,23,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,23,12,0,0),DateTime.new(1991,9,28,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,28,13,0,0),DateTime.new(1992,1,25,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1992,1,25,12,0,0),DateTime.new(1992,10,24,13,0,0),39600,0,:'VUT'))
add_period(TimezonePeriod.new(DateTime.new(1992,10,24,13,0,0),DateTime.new(1993,1,23,12,0,0),39600,3600,:'VUST'))
add_period(TimezonePeriod.new(DateTime.new(1993,1,23,12,0,0),DateTime.new(2045,9,3,22,37,53),39600,0,:'VUT'))
end
end
end
end
