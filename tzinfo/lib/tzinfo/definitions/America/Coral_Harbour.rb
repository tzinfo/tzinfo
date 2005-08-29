require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Coral_Harbour < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Coral_Harbour')
add_period(TimezonePeriod.new(nil,DateTime.new(1884,1,1,5,32,40),-19960,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1884,1,1,5,32,40),DateTime.new(1918,4,14,7,0,0),-18000,0,'ET'))
add_period(TimezonePeriod.new(DateTime.new(1918,4,14,7,0,0),DateTime.new(1918,10,27,6,0,0),-18000,3600,'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,27,6,0,0),DateTime.new(1919,5,25,7,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1919,5,25,7,0,0),DateTime.new(1919,11,1,4,0,0),-18000,3600,'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1919,11,1,4,0,0),DateTime.new(1942,2,9,7,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,9,7,0,0),DateTime.new(1945,9,30,6,0,0),-18000,3600,'EWT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,6,0,0),DateTime.new(1946,1,1,5,0,0),-18000,0,'EST'))
add_period(TimezonePeriod.new(DateTime.new(1946,1,1,5,0,0),nil,-18000,0,'EST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
