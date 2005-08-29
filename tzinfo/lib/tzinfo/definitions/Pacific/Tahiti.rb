require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tahiti < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Tahiti')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,10,1,9,58,16),-35896,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,10,1,9,58,16),nil,-36000,0,'TAHT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
