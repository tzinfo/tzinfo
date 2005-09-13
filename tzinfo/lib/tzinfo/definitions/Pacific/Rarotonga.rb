require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Rarotonga < Timezone #:nodoc:
setup
set_identifier('Pacific/Rarotonga')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,10,39,4),-38344,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,10,39,4),DateTime.new(1978,11,12,10,30,0),-37800,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1978,11,12,10,30,0),DateTime.new(1979,3,4,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1979,3,4,9,30,0),DateTime.new(1979,10,28,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,28,10,0,0),DateTime.new(1980,3,2,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1980,3,2,9,30,0),DateTime.new(1980,10,26,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1980,10,26,10,0,0),DateTime.new(1981,3,1,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1981,3,1,9,30,0),DateTime.new(1981,10,25,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1981,10,25,10,0,0),DateTime.new(1982,3,7,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1982,3,7,9,30,0),DateTime.new(1982,10,31,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1982,10,31,10,0,0),DateTime.new(1983,3,6,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1983,3,6,9,30,0),DateTime.new(1983,10,30,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1983,10,30,10,0,0),DateTime.new(1984,3,4,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,4,9,30,0),DateTime.new(1984,10,28,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1984,10,28,10,0,0),DateTime.new(1985,3,3,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1985,3,3,9,30,0),DateTime.new(1985,10,27,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1985,10,27,10,0,0),DateTime.new(1986,3,2,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,2,9,30,0),DateTime.new(1986,10,26,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,26,10,0,0),DateTime.new(1987,3,1,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,1,9,30,0),DateTime.new(1987,10,25,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,25,10,0,0),DateTime.new(1988,3,6,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,6,9,30,0),DateTime.new(1988,10,30,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1988,10,30,10,0,0),DateTime.new(1989,3,5,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,5,9,30,0),DateTime.new(1989,10,29,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,29,10,0,0),DateTime.new(1990,3,4,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,4,9,30,0),DateTime.new(1990,10,28,10,0,0),-36000,0,:'CKT'))
add_period(TimezonePeriod.new(DateTime.new(1990,10,28,10,0,0),DateTime.new(1991,3,3,9,30,0),-36000,1800,:'CKHST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,3,9,30,0),DateTime.new(2045,9,3,22,28,53),-36000,0,:'CKT'))
end
end
end
end
