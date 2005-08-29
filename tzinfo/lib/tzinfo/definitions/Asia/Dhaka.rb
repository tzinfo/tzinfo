require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dhaka < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Dhaka')
add_period(TimezonePeriod.new(nil,DateTime.new(1889,12,31,17,58,20),21700,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,17,58,20),DateTime.new(1941,9,30,18,6,40),21200,0,'HMT'))
add_period(TimezonePeriod.new(DateTime.new(1941,9,30,18,6,40),DateTime.new(1942,5,14,17,30,0),23400,0,'BURT'))
add_period(TimezonePeriod.new(DateTime.new(1942,5,14,17,30,0),DateTime.new(1942,8,31,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1942,8,31,18,30,0),DateTime.new(1951,9,29,17,30,0),23400,0,'BURT'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,29,17,30,0),DateTime.new(1971,3,25,18,0,0),21600,0,'DACT'))
add_period(TimezonePeriod.new(DateTime.new(1971,3,25,18,0,0),nil,21600,0,'BDT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
