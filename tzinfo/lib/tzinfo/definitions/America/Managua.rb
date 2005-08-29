require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Managua < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Managua')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,45,8),-20708,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,45,8),DateTime.new(1934,6,23,5,45,12),-20712,0,'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,6,23,5,45,12),DateTime.new(1973,5,1,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1973,5,1,6,0,0),DateTime.new(1975,2,16,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1975,2,16,5,0,0),DateTime.new(1979,3,18,6,0,0),-21600,0,'CT'))
add_period(TimezonePeriod.new(DateTime.new(1979,3,18,6,0,0),DateTime.new(1979,6,25,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1979,6,25,5,0,0),DateTime.new(1980,3,16,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1980,3,16,6,0,0),DateTime.new(1980,6,23,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1980,6,23,5,0,0),DateTime.new(1992,1,1,10,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1992,1,1,10,0,0),DateTime.new(1992,9,24,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1992,9,24,5,0,0),DateTime.new(1993,1,1,10,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1993,1,1,10,0,0),DateTime.new(1998,12,1,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1998,12,1,5,0,0),DateTime.new(2005,4,10,6,0,0),-21600,0,'CT'))
add_period(TimezonePeriod.new(DateTime.new(2005,4,10,6,0,0),DateTime.new(2005,9,18,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(2005,9,18,5,0,0),DateTime.new(2045,8,19,20,38,35),-21600,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
