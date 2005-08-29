require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kiritimati < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Kiritimati')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,10,29,20),-37760,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,10,29,20),DateTime.new(1979,10,1,10,40,0),-38400,0,'LINT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,1,10,40,0),DateTime.new(1995,1,1,10,0,0),-36000,0,'LINT'))
add_period(TimezonePeriod.new(DateTime.new(1995,1,1,10,0,0),nil,50400,0,'LINT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
