require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Seoul < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Seoul')
add_period(TimezonePeriod.new(nil,DateTime.new(1889,12,31,15,32,8),30472,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,15,32,8),DateTime.new(1904,11,30,15,30,0),30600,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1904,11,30,15,30,0),DateTime.new(1927,12,31,15,0,0),32400,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1927,12,31,15,0,0),DateTime.new(1931,12,31,15,30,0),30600,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1931,12,31,15,30,0),DateTime.new(1954,3,20,15,0,0),32400,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1954,3,20,15,0,0),DateTime.new(1960,5,14,16,0,0),28800,0,'KT'))
add_period(TimezonePeriod.new(DateTime.new(1960,5,14,16,0,0),DateTime.new(1960,9,12,15,0,0),28800,3600,'KDT'))
add_period(TimezonePeriod.new(DateTime.new(1960,9,12,15,0,0),DateTime.new(1961,8,9,16,0,0),28800,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1961,8,9,16,0,0),DateTime.new(1968,9,30,15,30,0),30600,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1968,9,30,15,30,0),DateTime.new(1987,5,9,15,0,0),32400,0,'KT'))
add_period(TimezonePeriod.new(DateTime.new(1987,5,9,15,0,0),DateTime.new(1987,10,10,14,0,0),32400,3600,'KDT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,10,14,0,0),DateTime.new(1988,5,7,15,0,0),32400,0,'KST'))
add_period(TimezonePeriod.new(DateTime.new(1988,5,7,15,0,0),DateTime.new(1988,10,8,14,0,0),32400,3600,'KDT'))
add_period(TimezonePeriod.new(DateTime.new(1988,10,8,14,0,0),DateTime.new(2045,8,19,20,49,40),32400,0,'KST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
