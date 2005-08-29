require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Pontianak < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Pontianak')
add_period(TimezonePeriod.new(nil,DateTime.new(1908,4,30,16,42,40),26240,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1908,4,30,16,42,40),DateTime.new(1932,10,31,16,42,40),26240,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,31,16,42,40),DateTime.new(1942,1,28,16,30,0),27000,0,'WIT'))
add_period(TimezonePeriod.new(DateTime.new(1942,1,28,16,30,0),DateTime.new(1945,7,31,15,0,0),32400,0,'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,7,31,15,0,0),DateTime.new(1948,4,30,16,30,0),27000,0,'WIT'))
add_period(TimezonePeriod.new(DateTime.new(1948,4,30,16,30,0),DateTime.new(1950,4,30,16,0,0),28800,0,'WIT'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,30,16,0,0),DateTime.new(1963,12,31,16,30,0),27000,0,'WIT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,31,16,30,0),DateTime.new(1987,12,31,16,0,0),28800,0,'CIT'))
add_period(TimezonePeriod.new(DateTime.new(1987,12,31,16,0,0),nil,25200,0,'WIT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
