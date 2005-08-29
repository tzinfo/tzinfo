require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Costa_Rica < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Costa_Rica')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,36,20),-20180,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,36,20),DateTime.new(1921,1,15,5,36,20),-20180,0,'SJMT'))
add_period(TimezonePeriod.new(DateTime.new(1921,1,15,5,36,20),DateTime.new(1979,2,25,6,0,0),-21600,0,'CT'))
add_period(TimezonePeriod.new(DateTime.new(1979,2,25,6,0,0),DateTime.new(1979,6,3,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1979,6,3,5,0,0),DateTime.new(1980,2,24,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1980,2,24,6,0,0),DateTime.new(1980,6,1,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1980,6,1,5,0,0),DateTime.new(1991,1,19,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1991,1,19,6,0,0),DateTime.new(1991,7,1,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1991,7,1,5,0,0),DateTime.new(1992,1,18,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1992,1,18,6,0,0),DateTime.new(1992,3,15,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1992,3,15,5,0,0),DateTime.new(2045,8,19,20,37,52),-21600,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
