require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tongatapu < Timezone #:nodoc:
setup
set_identifier('Pacific/Tongatapu')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,11,40,40),44360,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,11,40,40),DateTime.new(1940,12,31,11,40,0),44400,0,:'TOT'))
add_period(TimezonePeriod.new(DateTime.new(1940,12,31,11,40,0),DateTime.new(1998,12,31,11,0,0),46800,0,:'TOT'))
add_period(TimezonePeriod.new(DateTime.new(1998,12,31,11,0,0),DateTime.new(1999,10,6,13,0,0),46800,0,:'TOT'))
add_period(TimezonePeriod.new(DateTime.new(1999,10,6,13,0,0),DateTime.new(2000,3,18,13,0,0),46800,3600,:'TOST'))
add_period(TimezonePeriod.new(DateTime.new(2000,3,18,13,0,0),DateTime.new(2000,11,4,13,0,0),46800,0,:'TOT'))
add_period(TimezonePeriod.new(DateTime.new(2000,11,4,13,0,0),DateTime.new(2001,1,27,12,0,0),46800,3600,:'TOST'))
add_period(TimezonePeriod.new(DateTime.new(2001,1,27,12,0,0),DateTime.new(2001,11,3,13,0,0),46800,0,:'TOT'))
add_period(TimezonePeriod.new(DateTime.new(2001,11,3,13,0,0),DateTime.new(2002,1,26,12,0,0),46800,3600,:'TOST'))
add_period(TimezonePeriod.new(DateTime.new(2002,1,26,12,0,0),DateTime.new(2045,9,3,22,27,52),46800,0,:'TOT'))
end
end
end
end
