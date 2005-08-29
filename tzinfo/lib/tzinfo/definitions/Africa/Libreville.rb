require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Libreville < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Libreville')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,23,22,12),2268,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,23,22,12),nil,3600,0,'WAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
