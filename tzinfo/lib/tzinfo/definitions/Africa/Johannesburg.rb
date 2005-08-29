require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Johannesburg < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Johannesburg')
add_period(TimezonePeriod.new(nil,DateTime.new(1892,2,7,22,8,0),6720,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1892,2,7,22,8,0),DateTime.new(1903,2,28,22,30,0),5400,0,'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1903,2,28,22,30,0),DateTime.new(1942,9,20,0,0,0),7200,0,'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1942,9,20,0,0,0),DateTime.new(1943,3,20,23,0,0),7200,3600,'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,20,23,0,0),DateTime.new(1943,9,19,0,0,0),7200,0,'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1943,9,19,0,0,0),DateTime.new(1944,3,18,23,0,0),7200,3600,'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,18,23,0,0),DateTime.new(2045,8,19,20,37,45),7200,0,'SAST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
