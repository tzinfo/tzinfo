require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Algiers < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Algiers')
add_period(TimezonePeriod.new(nil,DateTime.new(1891,3,14,23,48,48),732,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1891,3,14,23,48,48),DateTime.new(1911,3,10,23,50,39),561,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,3,10,23,50,39),DateTime.new(1916,6,14,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1916,6,14,23,0,0),DateTime.new(1916,10,1,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1916,10,1,23,0,0),DateTime.new(1917,3,24,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1917,3,24,23,0,0),DateTime.new(1917,10,7,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1917,10,7,23,0,0),DateTime.new(1918,3,9,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1918,3,9,23,0,0),DateTime.new(1918,10,6,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,6,23,0,0),DateTime.new(1919,3,1,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1919,3,1,23,0,0),DateTime.new(1919,10,5,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1919,10,5,23,0,0),DateTime.new(1920,2,14,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1920,2,14,23,0,0),DateTime.new(1920,10,23,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1920,10,23,23,0,0),DateTime.new(1921,3,14,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1921,3,14,23,0,0),DateTime.new(1921,6,21,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1921,6,21,23,0,0),DateTime.new(1939,9,11,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1939,9,11,23,0,0),DateTime.new(1939,11,19,0,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1939,11,19,0,0,0),DateTime.new(1940,2,25,2,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1940,2,25,2,0,0),DateTime.new(1944,4,3,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1944,4,3,1,0,0),DateTime.new(1944,10,8,0,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1944,10,8,0,0,0),DateTime.new(1945,4,2,1,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1945,4,2,1,0,0),DateTime.new(1945,9,15,23,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,15,23,0,0),DateTime.new(1946,10,6,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1946,10,6,23,0,0),DateTime.new(1956,1,29,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1956,1,29,0,0,0),DateTime.new(1963,4,13,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1963,4,13,23,0,0),DateTime.new(1971,4,25,23,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1971,4,25,23,0,0),DateTime.new(1971,9,26,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1971,9,26,23,0,0),DateTime.new(1977,5,6,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1977,5,6,0,0,0),DateTime.new(1977,10,20,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1977,10,20,23,0,0),DateTime.new(1978,3,24,0,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1978,3,24,0,0,0),DateTime.new(1978,9,22,1,0,0),3600,3600,'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1978,9,22,1,0,0),DateTime.new(1979,10,25,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,25,23,0,0),DateTime.new(1980,4,25,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,25,0,0,0),DateTime.new(1980,10,31,1,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1980,10,31,1,0,0),DateTime.new(1981,5,1,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1981,5,1,0,0,0),nil,3600,0,'CET'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
