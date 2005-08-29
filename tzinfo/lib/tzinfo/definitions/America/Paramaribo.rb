require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Paramaribo < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Paramaribo')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,1,1,3,40,40),-13240,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,1,1,3,40,40),DateTime.new(1935,1,1,3,40,52),-13252,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1935,1,1,3,40,52),DateTime.new(1945,10,1,3,40,36),-13236,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1945,10,1,3,40,36),DateTime.new(1975,11,20,3,30,0),-12600,0,'NEGT'))
add_period(TimezonePeriod.new(DateTime.new(1975,11,20,3,30,0),DateTime.new(1984,10,1,3,30,0),-12600,0,'SRT'))
add_period(TimezonePeriod.new(DateTime.new(1984,10,1,3,30,0),nil,-10800,0,'SRT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
