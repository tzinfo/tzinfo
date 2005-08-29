require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Calcutta < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Calcutta')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,18,6,32),21208,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,18,6,32),DateTime.new(1941,9,30,18,6,40),21200,0,'HMT'))
add_period(TimezonePeriod.new(DateTime.new(1941,9,30,18,6,40),DateTime.new(1942,5,14,17,30,0),23400,0,'BURT'))
add_period(TimezonePeriod.new(DateTime.new(1942,5,14,17,30,0),DateTime.new(1942,8,31,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1942,8,31,18,30,0),DateTime.new(1945,10,14,17,30,0),19800,3600,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1945,10,14,17,30,0),nil,19800,0,'IST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
