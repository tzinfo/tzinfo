require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Port_Moresby < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Port_Moresby')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,14,11,20),35320,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,14,11,20),DateTime.new(1894,12,31,14,11,28),35312,0,'PMMT'))
add_period(TimezonePeriod.new(DateTime.new(1894,12,31,14,11,28),nil,36000,0,'PGT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
