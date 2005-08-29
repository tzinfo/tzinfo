require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Asmera < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Asmera')
add_period(TimezonePeriod.new(nil,DateTime.new(1869,12,31,21,24,28),9332,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1869,12,31,21,24,28),DateTime.new(1889,12,31,21,24,28),9332,0,'AMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,21,24,28),DateTime.new(1936,5,4,21,24,40),9320,0,'ADMT'))
add_period(TimezonePeriod.new(DateTime.new(1936,5,4,21,24,40),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
