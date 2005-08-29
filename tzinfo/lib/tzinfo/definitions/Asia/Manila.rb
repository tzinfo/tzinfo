require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Manila < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Manila')
add_period(TimezonePeriod.new(nil,DateTime.new(1844,12,31,15,56,0),-57360,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1844,12,31,15,56,0),DateTime.new(1899,5,10,15,56,0),29040,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1899,5,10,15,56,0),DateTime.new(1936,10,31,16,0,0),28800,0,'PHT'))
add_period(TimezonePeriod.new(DateTime.new(1936,10,31,16,0,0),DateTime.new(1937,1,31,15,0,0),28800,3600,'PHST'))
add_period(TimezonePeriod.new(DateTime.new(1937,1,31,15,0,0),DateTime.new(1942,4,30,16,0,0),28800,0,'PHT'))
add_period(TimezonePeriod.new(DateTime.new(1942,4,30,16,0,0),DateTime.new(1944,10,31,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1944,10,31,15,0,0),DateTime.new(1954,4,11,16,0,0),28800,0,'PHT'))
add_period(TimezonePeriod.new(DateTime.new(1954,4,11,16,0,0),DateTime.new(1954,6,30,15,0,0),28800,3600,'PHST'))
add_period(TimezonePeriod.new(DateTime.new(1954,6,30,15,0,0),DateTime.new(1978,3,21,16,0,0),28800,0,'PHT'))
add_period(TimezonePeriod.new(DateTime.new(1978,3,21,16,0,0),DateTime.new(1978,9,20,15,0,0),28800,3600,'PHST'))
add_period(TimezonePeriod.new(DateTime.new(1978,9,20,15,0,0),DateTime.new(2045,8,19,20,36,47),28800,0,'PHT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
