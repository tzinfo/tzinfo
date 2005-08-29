require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Conakry < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Conakry')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,0,54,52),-3292,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,0,54,52),DateTime.new(1934,2,26,0,0,0),0,0,'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,26,0,0,0),DateTime.new(1960,1,1,1,0,0),-3600,0,'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1960,1,1,1,0,0),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
