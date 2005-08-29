require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Panama < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Panama')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,18,8),-19088,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,18,8),DateTime.new(1908,4,22,5,19,36),-19176,0,'CMT'))
add_period(TimezonePeriod.new(DateTime.new(1908,4,22,5,19,36),nil,-18000,0,'EST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
