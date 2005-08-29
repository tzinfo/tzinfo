require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Majuro < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Majuro')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,35,12),41088,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,35,12),DateTime.new(1969,9,30,13,0,0),39600,0,'MHT'))
add_period(TimezonePeriod.new(DateTime.new(1969,9,30,13,0,0),nil,43200,0,'MHT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
