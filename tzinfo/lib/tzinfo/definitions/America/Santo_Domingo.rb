require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Santo_Domingo < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Santo_Domingo')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,39,36),-16776,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,39,36),DateTime.new(1933,4,1,16,40,0),-16800,0,'SDMT'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,1,16,40,0),DateTime.new(1966,10,30,5,0,0),-18000,0,'ET'))
add_period(TimezonePeriod.new(DateTime.new(1966,10,30,5,0,0),DateTime.new(1967,2,28,4,0,0),-18000,3600,'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1967,2,28,4,0,0),DateTime.new(1969,10,26,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1969,10,26,5,0,0),DateTime.new(1970,2,21,4,30,0),-18000,1800,'EHDT'))
add_period(TimezonePeriod.new(DateTime.new(1970,2,21,4,30,0),DateTime.new(1970,10,25,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1970,10,25,5,0,0),DateTime.new(1971,1,20,4,30,0),-18000,1800,'EHDT'))
add_period(TimezonePeriod.new(DateTime.new(1971,1,20,4,30,0),DateTime.new(1971,10,31,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,31,5,0,0),DateTime.new(1972,1,21,4,30,0),-18000,1800,'EHDT'))
add_period(TimezonePeriod.new(DateTime.new(1972,1,21,4,30,0),DateTime.new(1972,10,29,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1972,10,29,5,0,0),DateTime.new(1973,1,21,4,30,0),-18000,1800,'EHDT'))
add_period(TimezonePeriod.new(DateTime.new(1973,1,21,4,30,0),DateTime.new(1973,10,28,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1973,10,28,5,0,0),DateTime.new(1974,1,21,4,30,0),-18000,1800,'EHDT'))
add_period(TimezonePeriod.new(DateTime.new(1974,1,21,4,30,0),DateTime.new(1974,10,27,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1974,10,27,5,0,0),DateTime.new(2000,10,29,6,0,0),-14400,0,'AST'))
add_period(TimezonePeriod.new(DateTime.new(2000,10,29,6,0,0),DateTime.new(2000,12,3,6,0,0),-18000,0,'ET'))
add_period(TimezonePeriod.new(DateTime.new(2000,12,3,6,0,0),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
