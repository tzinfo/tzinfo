require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Nauru < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Nauru')
add_period(TimezonePeriod.new(nil,DateTime.new(1921,1,14,12,52,20),40060,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1921,1,14,12,52,20),DateTime.new(1942,3,14,12,30,0),41400,0,'NRT'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,14,12,30,0),DateTime.new(1944,8,14,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1944,8,14,15,0,0),DateTime.new(1979,4,30,12,30,0),41400,0,'NRT'))
add_period(TimezonePeriod.new(DateTime.new(1979,4,30,12,30,0),nil,43200,0,'NRT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
