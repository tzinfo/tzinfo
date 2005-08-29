require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kinshasa < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Kinshasa')
add_period(TimezonePeriod.new(nil,DateTime.new(1897,11,8,22,58,48),3672,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1897,11,8,22,58,48),nil,3600,0,'WAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
