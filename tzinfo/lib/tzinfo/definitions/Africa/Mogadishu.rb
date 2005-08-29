require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Mogadishu < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Mogadishu')
add_period(TimezonePeriod.new(nil,DateTime.new(1893,10,31,20,58,32),10888,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1893,10,31,20,58,32),DateTime.new(1930,12,31,21,0,0),10800,0,'EAT'))
add_period(TimezonePeriod.new(DateTime.new(1930,12,31,21,0,0),DateTime.new(1956,12,31,21,30,0),9000,0,'BEAT'))
add_period(TimezonePeriod.new(DateTime.new(1956,12,31,21,30,0),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
