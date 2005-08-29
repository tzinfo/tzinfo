require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuching < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Kuching')
add_period(TimezonePeriod.new(nil,DateTime.new(1926,2,28,16,38,40),26480,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1926,2,28,16,38,40),DateTime.new(1932,12,31,16,30,0),27000,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1932,12,31,16,30,0),DateTime.new(1935,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1935,9,13,16,0,0),DateTime.new(1935,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1935,12,13,15,40,0),DateTime.new(1936,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1936,9,13,16,0,0),DateTime.new(1936,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1936,12,13,15,40,0),DateTime.new(1937,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1937,9,13,16,0,0),DateTime.new(1937,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1937,12,13,15,40,0),DateTime.new(1938,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1938,9,13,16,0,0),DateTime.new(1938,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1938,12,13,15,40,0),DateTime.new(1939,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1939,9,13,16,0,0),DateTime.new(1939,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1939,12,13,15,40,0),DateTime.new(1940,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1940,9,13,16,0,0),DateTime.new(1940,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1940,12,13,15,40,0),DateTime.new(1941,9,13,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1941,9,13,16,0,0),DateTime.new(1941,12,13,15,40,0),28800,1200,'BORTST'))
add_period(TimezonePeriod.new(DateTime.new(1941,12,13,15,40,0),DateTime.new(1942,2,15,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,15,16,0,0),DateTime.new(1945,9,11,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,11,15,0,0),DateTime.new(1981,12,31,16,0,0),28800,0,'BORT'))
add_period(TimezonePeriod.new(DateTime.new(1981,12,31,16,0,0),nil,28800,0,'MYT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
