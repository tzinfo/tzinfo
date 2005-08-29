require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class Cape_Verde < Timezone #:nodoc:
def initialize
  super
set_identifier('Atlantic/Cape_Verde')
add_period(TimezonePeriod.new(nil,DateTime.new(1907,1,1,1,34,4),-5644,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1907,1,1,1,34,4),DateTime.new(1942,9,1,2,0,0),-7200,0,'CVT'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,1,2,0,0),DateTime.new(1945,10,15,1,0,0),-7200,3600,'CVST'))
add_period(TimezonePeriod.new(DateTime.new(1945,10,15,1,0,0),DateTime.new(1975,11,25,4,0,0),-7200,0,'CVT'))
add_period(TimezonePeriod.new(DateTime.new(1975,11,25,4,0,0),nil,-3600,0,'CVT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
