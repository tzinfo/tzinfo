require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Cayman < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Cayman')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,25,32),-19532,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,25,32),DateTime.new(1912,2,1,5,7,12),-18432,0,'KMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,2,1,5,7,12),nil,-18000,0,'EST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
