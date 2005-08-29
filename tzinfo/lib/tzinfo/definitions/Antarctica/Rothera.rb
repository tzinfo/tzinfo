require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Rothera < Timezone #:nodoc:
def initialize
  super
set_identifier('Antarctica/Rothera')
add_period(TimezonePeriod.new(nil,DateTime.new(1976,12,1,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1976,12,1,0,0,0),nil,-10800,0,'ROTT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
