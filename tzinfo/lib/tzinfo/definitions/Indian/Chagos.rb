require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Chagos < Timezone #:nodoc:
def initialize
  super
set_identifier('Indian/Chagos')
add_period(TimezonePeriod.new(nil,DateTime.new(1906,12,31,19,10,20),17380,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1906,12,31,19,10,20),DateTime.new(1995,12,31,19,0,0),18000,0,'IOT'))
add_period(TimezonePeriod.new(DateTime.new(1995,12,31,19,0,0),nil,21600,0,'IOT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
