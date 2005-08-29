require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Cocos < Timezone #:nodoc:
def initialize
  super
set_identifier('Indian/Cocos')
add_period(TimezonePeriod.new(nil,DateTime.new(1899,12,31,17,32,20),23260,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1899,12,31,17,32,20),nil,23400,0,'CCT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
