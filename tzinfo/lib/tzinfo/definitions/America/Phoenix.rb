require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Phoenix < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Phoenix')
add_period(TimezonePeriod.new(nil,DateTime.new(1883,11,18,19,0,0),-26898,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1883,11,18,19,0,0),DateTime.new(1918,3,31,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1918,3,31,9,0,0),DateTime.new(1918,10,27,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,27,8,0,0),DateTime.new(1919,3,30,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1919,3,30,9,0,0),DateTime.new(1919,10,26,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1919,10,26,8,0,0),DateTime.new(1942,2,9,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,9,9,0,0),DateTime.new(1944,1,1,6,1,0),-25200,3600,'MWT'))
add_period(TimezonePeriod.new(DateTime.new(1944,1,1,6,1,0),DateTime.new(1944,4,1,7,1,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1944,4,1,7,1,0),DateTime.new(1944,10,1,7,1,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1944,10,1,7,1,0),DateTime.new(1967,1,1,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1967,1,1,7,0,0),DateTime.new(1967,4,30,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,30,9,0,0),DateTime.new(1967,10,29,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1967,10,29,8,0,0),DateTime.new(1968,3,21,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1968,3,21,7,0,0),nil,-25200,0,'MST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
