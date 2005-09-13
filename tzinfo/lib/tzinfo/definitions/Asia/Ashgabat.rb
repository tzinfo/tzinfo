require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ashgabat < Timezone #:nodoc:
setup
set_identifier('Asia/Ashgabat')
add_period(TimezonePeriod.new(nil,DateTime.new(1924,5,1,20,6,28),14012,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1924,5,1,20,6,28),DateTime.new(1930,6,20,20,0,0),14400,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1930,6,20,20,0,0),DateTime.new(1981,3,31,19,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1981,3,31,19,0,0),DateTime.new(1981,9,30,18,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1981,9,30,18,0,0),DateTime.new(1982,3,31,19,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1982,3,31,19,0,0),DateTime.new(1982,9,30,18,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1982,9,30,18,0,0),DateTime.new(1983,3,31,19,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1983,3,31,19,0,0),DateTime.new(1983,9,30,18,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,30,18,0,0),DateTime.new(1984,3,31,19,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,31,19,0,0),DateTime.new(1984,9,29,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1984,9,29,21,0,0),DateTime.new(1985,3,30,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1985,3,30,21,0,0),DateTime.new(1985,9,28,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1985,9,28,21,0,0),DateTime.new(1986,3,29,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,29,21,0,0),DateTime.new(1986,9,27,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1986,9,27,21,0,0),DateTime.new(1987,3,28,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,28,21,0,0),DateTime.new(1987,9,26,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,26,21,0,0),DateTime.new(1988,3,26,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,26,21,0,0),DateTime.new(1988,9,24,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,24,21,0,0),DateTime.new(1989,3,25,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,25,21,0,0),DateTime.new(1989,9,23,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,23,21,0,0),DateTime.new(1990,3,24,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,24,21,0,0),DateTime.new(1990,9,29,21,0,0),18000,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,29,21,0,0),DateTime.new(1991,3,30,21,0,0),18000,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,30,21,0,0),DateTime.new(1991,9,28,22,0,0),14400,3600,:'ASHST'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,28,22,0,0),DateTime.new(1991,10,26,20,0,0),14400,0,:'ASHT'))
add_period(TimezonePeriod.new(DateTime.new(1991,10,26,20,0,0),DateTime.new(1992,1,18,22,0,0),14400,0,:'TMT'))
add_period(TimezonePeriod.new(DateTime.new(1992,1,18,22,0,0),nil,18000,0,:'TMT'))
end
end
end
end
