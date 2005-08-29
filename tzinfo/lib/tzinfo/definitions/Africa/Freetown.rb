require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Freetown < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Freetown')
add_period(TimezonePeriod.new(nil,DateTime.new(1882,1,1,0,53,0),-3180,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1882,1,1,0,53,0),DateTime.new(1913,6,1,0,53,0),-3180,0,'FMT'))
add_period(TimezonePeriod.new(DateTime.new(1913,6,1,0,53,0),DateTime.new(1935,6,1,1,0,0),-3600,0,''))
add_period(TimezonePeriod.new(DateTime.new(1935,6,1,1,0,0),DateTime.new(1935,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1935,10,1,0,20,0),DateTime.new(1936,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1936,6,1,1,0,0),DateTime.new(1936,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1936,10,1,0,20,0),DateTime.new(1937,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1937,6,1,1,0,0),DateTime.new(1937,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1937,10,1,0,20,0),DateTime.new(1938,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1938,6,1,1,0,0),DateTime.new(1938,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1938,10,1,0,20,0),DateTime.new(1939,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1939,6,1,1,0,0),DateTime.new(1939,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1939,10,1,0,20,0),DateTime.new(1940,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1940,6,1,1,0,0),DateTime.new(1940,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1940,10,1,0,20,0),DateTime.new(1941,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1941,6,1,1,0,0),DateTime.new(1941,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1941,10,1,0,20,0),DateTime.new(1942,6,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1942,6,1,1,0,0),DateTime.new(1942,10,1,0,20,0),-3600,2400,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1942,10,1,0,20,0),DateTime.new(1957,1,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1957,1,1,1,0,0),DateTime.new(1957,6,1,0,0,0),0,0,''))
add_period(TimezonePeriod.new(DateTime.new(1957,6,1,0,0,0),DateTime.new(1957,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1957,8,31,23,0,0),DateTime.new(1958,6,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1958,6,1,0,0,0),DateTime.new(1958,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1958,8,31,23,0,0),DateTime.new(1959,6,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1959,6,1,0,0,0),DateTime.new(1959,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1959,8,31,23,0,0),DateTime.new(1960,6,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1960,6,1,0,0,0),DateTime.new(1960,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1960,8,31,23,0,0),DateTime.new(1961,6,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1961,6,1,0,0,0),DateTime.new(1961,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1961,8,31,23,0,0),DateTime.new(1962,6,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1962,6,1,0,0,0),DateTime.new(1962,8,31,23,0,0),0,3600,'SLST'))
add_period(TimezonePeriod.new(DateTime.new(1962,8,31,23,0,0),DateTime.new(2045,8,19,20,36,41),0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
