require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Karachi < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Karachi')
add_period(TimezonePeriod.new(nil,DateTime.new(1906,12,31,19,31,48),16092,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1906,12,31,19,31,48),DateTime.new(1942,8,31,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1942,8,31,18,30,0),DateTime.new(1945,10,14,17,30,0),19800,3600,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1945,10,14,17,30,0),DateTime.new(1951,9,29,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,29,18,30,0),DateTime.new(1971,3,25,19,0,0),18000,0,'KART'))
add_period(TimezonePeriod.new(DateTime.new(1971,3,25,19,0,0),DateTime.new(2002,4,6,19,1,0),18000,0,'PKT'))
add_period(TimezonePeriod.new(DateTime.new(2002,4,6,19,1,0),DateTime.new(2002,10,5,18,1,0),18000,3600,'PKST'))
add_period(TimezonePeriod.new(DateTime.new(2002,10,5,18,1,0),DateTime.new(2045,8,19,20,51,17),18000,0,'PKT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
