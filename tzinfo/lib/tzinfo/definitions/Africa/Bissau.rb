require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bissau < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Bissau')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,5,26,1,2,20),-3740,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,5,26,1,2,20),DateTime.new(1975,1,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1975,1,1,1,0,0),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
