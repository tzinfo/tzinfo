require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Accra < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Accra')
add_period(TimezonePeriod.new(nil,DateTime.new(1918,1,1,0,0,52),-52,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1918,1,1,0,0,52),DateTime.new(1936,9,1,0,0,0),0,0,''))
add_period(TimezonePeriod.new(DateTime.new(1936,9,1,0,0,0),DateTime.new(1936,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1936,12,30,23,40,0),DateTime.new(1937,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1937,9,1,0,0,0),DateTime.new(1937,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1937,12,30,23,40,0),DateTime.new(1938,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1938,9,1,0,0,0),DateTime.new(1938,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1938,12,30,23,40,0),DateTime.new(1939,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1939,9,1,0,0,0),DateTime.new(1939,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1939,12,30,23,40,0),DateTime.new(1940,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1940,9,1,0,0,0),DateTime.new(1940,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1940,12,30,23,40,0),DateTime.new(1941,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1941,9,1,0,0,0),DateTime.new(1941,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,30,23,40,0),DateTime.new(1942,9,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,1,0,0,0),DateTime.new(1942,12,30,23,40,0),0,1200,'GHST'))
add_period(TimezonePeriod.new(DateTime.new(1942,12,30,23,40,0),DateTime.new(2045,8,19,20,49,31),0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
