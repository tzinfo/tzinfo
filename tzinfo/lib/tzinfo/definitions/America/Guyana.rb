require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guyana < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Guyana')
add_period(TimezonePeriod.new(nil,DateTime.new(1915,3,1,3,52,40),-13960,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1915,3,1,3,52,40),DateTime.new(1966,5,26,3,45,0),-13500,0,'GBGT'))
add_period(TimezonePeriod.new(DateTime.new(1966,5,26,3,45,0),DateTime.new(1975,7,31,3,45,0),-13500,0,'GYT'))
add_period(TimezonePeriod.new(DateTime.new(1975,7,31,3,45,0),DateTime.new(1991,1,1,3,0,0),-10800,0,'GYT'))
add_period(TimezonePeriod.new(DateTime.new(1991,1,1,3,0,0),nil,-14400,0,'GYT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
