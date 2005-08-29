require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Midway < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Midway')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,11,49,28),-42568,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,11,49,28),DateTime.new(1956,6,3,11,0,0),-39600,0,'NST'))
add_period(TimezonePeriod.new(DateTime.new(1956,6,3,11,0,0),DateTime.new(1956,9,2,10,0,0),-39600,3600,'NDT'))
add_period(TimezonePeriod.new(DateTime.new(1956,9,2,10,0,0),DateTime.new(1967,4,1,11,0,0),-39600,0,'NST'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,1,11,0,0),DateTime.new(1983,11,30,11,0,0),-39600,0,'BST'))
add_period(TimezonePeriod.new(DateTime.new(1983,11,30,11,0,0),nil,-39600,0,'SST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
