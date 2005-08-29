require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Pyongyang < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Pyongyang')
add_period(TimezonePeriod.new(nil,DateTime.new(1889,12,31,15,37,0),30180,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,15,37,0),DateTime.new(1904,11,30,15,30,0),30600,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1904,11,30,15,30,0),DateTime.new(1927,12,31,15,0,0),32400,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1927,12,31,15,0,0),DateTime.new(1931,12,31,15,30,0),30600,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1931,12,31,15,30,0),DateTime.new(1954,3,20,15,0,0),32400,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1954,3,20,15,0,0),DateTime.new(1961,8,9,16,0,0),28800,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1961,8,9,16,0,0),nil,32400,0,'KST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
