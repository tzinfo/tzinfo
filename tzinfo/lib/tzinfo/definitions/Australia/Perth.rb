require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Perth < Timezone #:nodoc:
def initialize
  super
set_identifier('Australia/Perth')
add_period(TimezonePeriod.new(nil,DateTime.new(1895,11,30,16,16,36),27804,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1895,11,30,16,16,36),DateTime.new(1916,12,31,16,1,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1916,12,31,16,1,0),DateTime.new(1917,3,24,17,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1917,3,24,17,0,0),DateTime.new(1941,12,31,18,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,31,18,0,0),DateTime.new(1942,3,28,17,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,28,17,0,0),DateTime.new(1942,9,26,18,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,26,18,0,0),DateTime.new(1943,3,27,17,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,27,17,0,0),DateTime.new(1943,6,30,16,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1943,6,30,16,0,0),DateTime.new(1974,10,26,18,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1974,10,26,18,0,0),DateTime.new(1975,3,1,18,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1975,3,1,18,0,0),DateTime.new(1983,10,29,18,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1983,10,29,18,0,0),DateTime.new(1984,3,3,18,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,3,18,0,0),DateTime.new(1991,11,16,18,0,0),28800,0,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1991,11,16,18,0,0),DateTime.new(1992,2,29,18,0,0),28800,3600,'WST'))
add_period(TimezonePeriod.new(DateTime.new(1992,2,29,18,0,0),nil,28800,0,'WST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
