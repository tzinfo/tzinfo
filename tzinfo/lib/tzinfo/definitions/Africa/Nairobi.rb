require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Nairobi < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Nairobi')
add_period(TimezonePeriod.new(nil,DateTime.new(1928,6,30,21,32,44),8836,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1928,6,30,21,32,44),DateTime.new(1929,12,31,21,0,0),10800,0,'EAT'))
add_period(TimezonePeriod.new(DateTime.new(1929,12,31,21,0,0),DateTime.new(1939,12,31,21,30,0),9000,0,'BEAT'))
add_period(TimezonePeriod.new(DateTime.new(1939,12,31,21,30,0),DateTime.new(1959,12,31,21,15,15),9885,0,'BEAUT'))
add_period(TimezonePeriod.new(DateTime.new(1959,12,31,21,15,15),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
