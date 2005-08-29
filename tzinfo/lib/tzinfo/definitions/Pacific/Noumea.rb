require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Noumea < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Noumea')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,12,12,54,12),39948,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,12,12,54,12),DateTime.new(1977,12,3,13,0,0),39600,0,'NCT'))
add_period(TimezonePeriod.new(DateTime.new(1977,12,3,13,0,0),DateTime.new(1978,2,26,12,0,0),39600,3600,'NCST'))
add_period(TimezonePeriod.new(DateTime.new(1978,2,26,12,0,0),DateTime.new(1978,12,2,13,0,0),39600,0,'NCT'))
add_period(TimezonePeriod.new(DateTime.new(1978,12,2,13,0,0),DateTime.new(1979,2,26,12,0,0),39600,3600,'NCST'))
add_period(TimezonePeriod.new(DateTime.new(1979,2,26,12,0,0),DateTime.new(1996,11,30,15,0,0),39600,0,'NCT'))
add_period(TimezonePeriod.new(DateTime.new(1996,11,30,15,0,0),DateTime.new(1997,3,1,15,0,0),39600,3600,'NCST'))
add_period(TimezonePeriod.new(DateTime.new(1997,3,1,15,0,0),DateTime.new(2045,8,19,20,36,37),39600,0,'NCT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
