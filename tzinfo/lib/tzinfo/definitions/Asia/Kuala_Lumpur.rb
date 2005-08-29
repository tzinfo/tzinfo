require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuala_Lumpur < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Kuala_Lumpur')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,17,13,14),24406,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,17,13,14),DateTime.new(1905,5,31,17,4,35),24925,0,'SMT'))
add_period(TimezonePeriod.new(DateTime.new(1905,5,31,17,4,35),DateTime.new(1932,12,31,17,0,0),25200,0,'MALT'))
add_period(TimezonePeriod.new(DateTime.new(1932,12,31,17,0,0),DateTime.new(1935,12,31,16,40,0),25200,1200,'MALST'))
add_period(TimezonePeriod.new(DateTime.new(1935,12,31,16,40,0),DateTime.new(1941,8,31,16,40,0),26400,0,'MALT'))
add_period(TimezonePeriod.new(DateTime.new(1941,8,31,16,40,0),DateTime.new(1942,2,15,16,30,0),27000,0,'MALT'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,15,16,30,0),DateTime.new(1945,9,11,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,11,15,0,0),DateTime.new(1981,12,31,16,30,0),27000,0,'MALT'))
add_period(TimezonePeriod.new(DateTime.new(1981,12,31,16,30,0),nil,28800,0,'MYT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
