require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Swift_Current < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Swift_Current')
add_period(TimezonePeriod.new(nil,DateTime.new(1905,9,1,7,11,20),-25880,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1905,9,1,7,11,20),DateTime.new(1918,4,14,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1918,4,14,9,0,0),DateTime.new(1918,10,31,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,31,8,0,0),DateTime.new(1942,2,9,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,9,9,0,0),DateTime.new(1945,9,30,8,0,0),-25200,3600,'MWT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,8,0,0),DateTime.new(1946,4,28,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1946,4,28,9,0,0),DateTime.new(1947,4,27,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1947,4,27,9,0,0),DateTime.new(1947,9,28,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1947,9,28,8,0,0),DateTime.new(1948,4,25,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1948,4,25,9,0,0),DateTime.new(1948,9,26,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1948,9,26,8,0,0),DateTime.new(1949,4,24,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1949,4,24,9,0,0),DateTime.new(1949,9,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1949,9,25,8,0,0),DateTime.new(1950,1,1,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1950,1,1,7,0,0),DateTime.new(1957,4,28,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1957,4,28,9,0,0),DateTime.new(1957,10,27,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1957,10,27,8,0,0),DateTime.new(1959,4,26,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1959,4,26,9,0,0),DateTime.new(1959,10,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1959,10,25,8,0,0),DateTime.new(1960,4,24,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1960,4,24,9,0,0),DateTime.new(1960,9,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1960,9,25,8,0,0),DateTime.new(1961,4,30,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1961,4,30,9,0,0),DateTime.new(1961,9,24,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1961,9,24,8,0,0),DateTime.new(1972,4,30,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1972,4,30,9,0,0),nil,-21600,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
