require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Marquesas < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Marquesas')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,10,1,9,18,0),-33480,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,10,1,9,18,0),nil,-34200,0,'MART'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
