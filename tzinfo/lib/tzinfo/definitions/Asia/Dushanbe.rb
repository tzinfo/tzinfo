require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dushanbe < Timezone #:nodoc:
setup
set_identifier('Asia/Dushanbe')
add_period(TimezonePeriod.new(nil,DateTime.new(1924,5,1,19,24,48),16512,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1924,5,1,19,24,48),DateTime.new(1930,6,20,19,0,0),18000,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1930,6,20,19,0,0),DateTime.new(1981,3,31,18,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1981,3,31,18,0,0),DateTime.new(1981,9,30,17,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1981,9,30,17,0,0),DateTime.new(1982,3,31,18,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1982,3,31,18,0,0),DateTime.new(1982,9,30,17,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1982,9,30,17,0,0),DateTime.new(1983,3,31,18,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1983,3,31,18,0,0),DateTime.new(1983,9,30,17,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,30,17,0,0),DateTime.new(1984,3,31,18,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,31,18,0,0),DateTime.new(1984,9,29,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1984,9,29,20,0,0),DateTime.new(1985,3,30,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1985,3,30,20,0,0),DateTime.new(1985,9,28,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1985,9,28,20,0,0),DateTime.new(1986,3,29,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,29,20,0,0),DateTime.new(1986,9,27,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1986,9,27,20,0,0),DateTime.new(1987,3,28,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,28,20,0,0),DateTime.new(1987,9,26,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,26,20,0,0),DateTime.new(1988,3,26,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,26,20,0,0),DateTime.new(1988,9,24,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,24,20,0,0),DateTime.new(1989,3,25,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,25,20,0,0),DateTime.new(1989,9,23,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,23,20,0,0),DateTime.new(1990,3,24,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,24,20,0,0),DateTime.new(1990,9,29,20,0,0),21600,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,29,20,0,0),DateTime.new(1991,3,30,20,0,0),21600,0,:'DUST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,30,20,0,0),DateTime.new(1991,9,8,21,0,0),18000,3600,:'DUSST'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,8,21,0,0),nil,18000,0,:'TJT'))
end
end
end
end
