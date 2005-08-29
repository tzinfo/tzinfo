require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Ouagadougou < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Ouagadougou')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,0,6,4),-364,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,0,6,4),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
