require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Mahe < Timezone #:nodoc:
def initialize
  super
set_identifier('Indian/Mahe')
add_period(TimezonePeriod.new(nil,DateTime.new(1906,5,31,20,18,12),13308,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1906,5,31,20,18,12),nil,14400,0,'SCT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
