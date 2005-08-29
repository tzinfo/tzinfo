require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Niamey < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Niamey')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,23,51,32),508,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,23,51,32),DateTime.new(1934,2,26,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,26,1,0,0),DateTime.new(1960,1,1,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1960,1,1,0,0,0),nil,3600,0,'WAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
