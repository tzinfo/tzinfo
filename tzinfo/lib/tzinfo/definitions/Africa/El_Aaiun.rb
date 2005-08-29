require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class El_Aaiun < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/El_Aaiun')
add_period(TimezonePeriod.new(nil,DateTime.new(1934,1,1,0,52,48),-3168,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,1,1,0,52,48),DateTime.new(1976,4,14,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1976,4,14,1,0,0),nil,0,0,'WET'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
