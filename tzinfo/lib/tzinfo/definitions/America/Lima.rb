require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Lima < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Lima')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,8,12),-18492,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,8,12),DateTime.new(1908,7,28,5,8,36),-18516,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1908,7,28,5,8,36),DateTime.new(1938,1,1,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1938,1,1,5,0,0),DateTime.new(1938,4,1,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1938,4,1,4,0,0),DateTime.new(1938,9,25,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1938,9,25,5,0,0),DateTime.new(1939,3,26,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1939,3,26,4,0,0),DateTime.new(1939,9,24,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1939,9,24,5,0,0),DateTime.new(1940,3,24,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1940,3,24,4,0,0),DateTime.new(1986,1,1,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1986,1,1,5,0,0),DateTime.new(1986,4,1,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1986,4,1,4,0,0),DateTime.new(1987,1,1,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1987,1,1,5,0,0),DateTime.new(1987,4,1,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1987,4,1,4,0,0),DateTime.new(1990,1,1,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1990,1,1,5,0,0),DateTime.new(1990,4,1,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1990,4,1,4,0,0),DateTime.new(1994,1,1,5,0,0),-18000,0,'PET'))
add_period(TimezonePeriod.new(DateTime.new(1994,1,1,5,0,0),DateTime.new(1994,4,1,4,0,0),-18000,3600,'PEST'))
add_period(TimezonePeriod.new(DateTime.new(1994,4,1,4,0,0),DateTime.new(2045,8,19,20,37,10),-18000,0,'PET'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
