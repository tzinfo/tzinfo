require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Darwin < Timezone #:nodoc:
def initialize
  super
set_identifier('Australia/Darwin')
add_period(TimezonePeriod.new(nil,DateTime.new(1895,1,31,15,16,40),31400,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1895,1,31,15,16,40),DateTime.new(1899,4,30,15,0,0),32400,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1899,4,30,15,0,0),DateTime.new(1916,12,31,14,31,0),34200,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1916,12,31,14,31,0),DateTime.new(1917,3,24,15,30,0),34200,3600,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1917,3,24,15,30,0),DateTime.new(1941,12,31,16,30,0),34200,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,31,16,30,0),DateTime.new(1942,3,28,15,30,0),34200,3600,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,28,15,30,0),DateTime.new(1942,9,26,16,30,0),34200,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,26,16,30,0),DateTime.new(1943,3,27,15,30,0),34200,3600,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,27,15,30,0),DateTime.new(1943,10,2,16,30,0),34200,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1943,10,2,16,30,0),DateTime.new(1944,3,25,15,30,0),34200,3600,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,25,15,30,0),DateTime.new(2045,8,19,20,37,28),34200,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
