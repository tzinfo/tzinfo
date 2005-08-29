require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Pitcairn < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Pitcairn')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,8,40,20),-31220,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,8,40,20),DateTime.new(1998,4,27,8,30,0),-30600,0,'PNT'))
add_period(TimezonePeriod.new(DateTime.new(1998,4,27,8,30,0),nil,-28800,0,'PST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
