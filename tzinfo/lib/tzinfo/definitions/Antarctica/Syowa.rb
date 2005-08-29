require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Syowa < Timezone #:nodoc:
def initialize
  super
set_identifier('Antarctica/Syowa')
add_period(TimezonePeriod.new(nil,DateTime.new(1957,1,29,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1957,1,29,0,0,0),nil,10800,0,'SYOT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
