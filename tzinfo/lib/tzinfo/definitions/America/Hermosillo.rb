require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Hermosillo < Timezone #:nodoc:
setup
set_identifier('America/Hermosillo')
add_period(TimezonePeriod.new(nil,DateTime.new(1922,1,1,7,0,0),-26632,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1922,1,1,7,0,0),DateTime.new(1927,6,11,6,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1927,6,11,6,0,0),DateTime.new(1930,11,15,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1930,11,15,6,0,0),DateTime.new(1931,5,2,6,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1931,5,2,6,0,0),DateTime.new(1931,10,1,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,1,6,0,0),DateTime.new(1932,4,1,7,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1932,4,1,7,0,0),DateTime.new(1942,4,24,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1942,4,24,6,0,0),DateTime.new(1949,1,14,7,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1949,1,14,7,0,0),DateTime.new(1970,1,1,8,0,0),-28800,0,:'PST'))
add_period(TimezonePeriod.new(DateTime.new(1970,1,1,8,0,0),DateTime.new(1996,4,7,9,0,0),-25200,0,:'MT'))
add_period(TimezonePeriod.new(DateTime.new(1996,4,7,9,0,0),DateTime.new(1996,10,27,8,0,0),-25200,3600,:'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1996,10,27,8,0,0),DateTime.new(1997,4,6,9,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1997,4,6,9,0,0),DateTime.new(1997,10,26,8,0,0),-25200,3600,:'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1997,10,26,8,0,0),DateTime.new(1998,4,5,9,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1998,4,5,9,0,0),DateTime.new(1998,10,25,8,0,0),-25200,3600,:'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1998,10,25,8,0,0),DateTime.new(1999,1,1,7,0,0),-25200,0,:'MST'))
add_period(TimezonePeriod.new(DateTime.new(1999,1,1,7,0,0),nil,-25200,0,:'MST'))
end
end
end
end
