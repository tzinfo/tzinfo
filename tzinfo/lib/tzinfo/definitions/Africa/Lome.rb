require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lome < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Lome')
add_period(TimezonePeriod.new(nil,DateTime.new(1892,12,31,23,55,8),292,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1892,12,31,23,55,8),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
