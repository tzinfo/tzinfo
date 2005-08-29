require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tokyo < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Tokyo')
add_period(TimezonePeriod.new(nil,DateTime.new(1887,12,31,15,0,0),33539,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1887,12,31,15,0,0),DateTime.new(1895,12,31,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1895,12,31,15,0,0),DateTime.new(1937,12,31,15,0,0),32400,0,'CJT'))
add_period(TimezonePeriod.new(DateTime.new(1937,12,31,15,0,0),DateTime.new(1948,5,1,17,0,0),32400,0,'JT'))
add_period(TimezonePeriod.new(DateTime.new(1948,5,1,17,0,0),DateTime.new(1948,9,10,16,0,0),32400,3600,'JDT'))
add_period(TimezonePeriod.new(DateTime.new(1948,9,10,16,0,0),DateTime.new(1949,4,2,17,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1949,4,2,17,0,0),DateTime.new(1949,9,9,16,0,0),32400,3600,'JDT'))
add_period(TimezonePeriod.new(DateTime.new(1949,9,9,16,0,0),DateTime.new(1950,5,6,17,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1950,5,6,17,0,0),DateTime.new(1950,9,8,16,0,0),32400,3600,'JDT'))
add_period(TimezonePeriod.new(DateTime.new(1950,9,8,16,0,0),DateTime.new(1951,5,5,17,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1951,5,5,17,0,0),DateTime.new(1951,9,7,16,0,0),32400,3600,'JDT'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,7,16,0,0),DateTime.new(2045,8,19,20,49,27),32400,0,'JST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
