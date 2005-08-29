require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Tunis < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Tunis')
add_period(TimezonePeriod.new(nil,DateTime.new(1881,5,11,23,19,16),2444,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1881,5,11,23,19,16),DateTime.new(1911,3,10,23,50,39),561,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,3,10,23,50,39),DateTime.new(1939,4,15,22,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1939,4,15,22,0,0),DateTime.new(1939,11,18,22,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1939,11,18,22,0,0),DateTime.new(1940,2,25,22,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1940,2,25,22,0,0),DateTime.new(1941,10,5,22,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1941,10,5,22,0,0),DateTime.new(1942,3,8,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1942,3,8,23,0,0),DateTime.new(1942,11,2,1,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1942,11,2,1,0,0),DateTime.new(1943,3,29,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,29,1,0,0),DateTime.new(1943,4,17,0,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1943,4,17,0,0,0),DateTime.new(1943,4,25,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1943,4,25,1,0,0),DateTime.new(1943,10,4,0,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1943,10,4,0,0,0),DateTime.new(1944,4,3,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1944,4,3,1,0,0),DateTime.new(1944,10,7,22,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1944,10,7,22,0,0),DateTime.new(1945,4,2,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1945,4,2,1,0,0),DateTime.new(1945,9,15,22,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,15,22,0,0),DateTime.new(1977,4,29,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1977,4,29,23,0,0),DateTime.new(1977,9,23,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1977,9,23,23,0,0),DateTime.new(1978,4,30,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,30,23,0,0),DateTime.new(1978,9,30,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1978,9,30,23,0,0),DateTime.new(1988,5,31,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1988,5,31,23,0,0),DateTime.new(1988,9,24,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,24,23,0,0),DateTime.new(1989,3,25,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,25,23,0,0),DateTime.new(1989,9,23,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,23,23,0,0),DateTime.new(1990,4,30,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1990,4,30,23,0,0),DateTime.new(1990,9,29,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,29,23,0,0),DateTime.new(2005,4,30,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(2005,4,30,23,0,0),DateTime.new(2005,9,30,0,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(2005,9,30,0,0,0),DateTime.new(2045,8,19,20,39,18),3600,0,'CET'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
