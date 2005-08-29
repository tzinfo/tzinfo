require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Niue < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Niue')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,11,19,40),-40780,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,11,19,40),DateTime.new(1951,1,1,11,20,0),-40800,0,'NUT'))
add_period(TimezonePeriod.new(DateTime.new(1951,1,1,11,20,0),DateTime.new(1978,10,1,11,30,0),-41400,0,'NUT'))
add_period(TimezonePeriod.new(DateTime.new(1978,10,1,11,30,0),nil,-39600,0,'NUT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
