require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Colombo < Timezone #:nodoc:
setup
set_identifier('Asia/Colombo')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,18,40,36),19164,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,18,40,36),DateTime.new(1905,12,31,18,40,28),19172,0,:'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1905,12,31,18,40,28),DateTime.new(1942,1,4,18,30,0),19800,0,:'IST'))
add_period(TimezonePeriod.new(DateTime.new(1942,1,4,18,30,0),DateTime.new(1942,8,31,18,0,0),19800,1800,:'IHST'))
add_period(TimezonePeriod.new(DateTime.new(1942,8,31,18,0,0),DateTime.new(1945,10,15,19,30,0),19800,3600,:'IST'))
add_period(TimezonePeriod.new(DateTime.new(1945,10,15,19,30,0),DateTime.new(1996,5,24,18,30,0),19800,0,:'IST'))
add_period(TimezonePeriod.new(DateTime.new(1996,5,24,18,30,0),DateTime.new(1996,10,25,18,0,0),23400,0,:'LKT'))
add_period(TimezonePeriod.new(DateTime.new(1996,10,25,18,0,0),nil,21600,0,:'LKT'))
end
end
end
end
