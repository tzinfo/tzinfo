require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Lucia < Timezone #:nodoc:
def initialize
  super
set_identifier('America/St_Lucia')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,4,0),-14640,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,4,0),DateTime.new(1912,1,1,4,4,0),-14640,0,'CMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,4,4,0),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
