require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Douala < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Douala')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,23,21,12),2328,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,23,21,12),nil,3600,0,'WAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
