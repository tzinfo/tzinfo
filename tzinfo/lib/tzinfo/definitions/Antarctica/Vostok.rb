require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Vostok < Timezone #:nodoc:
def initialize
  super
set_identifier('Antarctica/Vostok')
add_period(TimezonePeriod.new(nil,DateTime.new(1957,12,16,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1957,12,16,0,0,0),nil,21600,0,'VOST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
