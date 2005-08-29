require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Casablanca < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Casablanca')
add_period(TimezonePeriod.new(nil,DateTime.new(1913,10,26,0,30,20),-1820,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1913,10,26,0,30,20),DateTime.new(1939,9,12,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1939,9,12,0,0,0),DateTime.new(1939,11,18,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1939,11,18,23,0,0),DateTime.new(1940,2,25,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1940,2,25,0,0,0),DateTime.new(1945,11,17,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1945,11,17,23,0,0),DateTime.new(1950,6,11,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1950,6,11,0,0,0),DateTime.new(1950,10,28,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1950,10,28,23,0,0),DateTime.new(1967,6,3,12,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1967,6,3,12,0,0),DateTime.new(1967,9,30,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1967,9,30,23,0,0),DateTime.new(1974,6,24,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1974,6,24,0,0,0),DateTime.new(1974,8,31,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1974,8,31,23,0,0),DateTime.new(1976,5,1,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1976,5,1,0,0,0),DateTime.new(1976,7,31,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1976,7,31,23,0,0),DateTime.new(1977,5,1,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1977,5,1,0,0,0),DateTime.new(1977,9,27,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1977,9,27,23,0,0),DateTime.new(1978,6,1,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1978,6,1,0,0,0),DateTime.new(1978,8,3,23,0,0),0,3600,'WEST'))
add_period(TimezonePeriod.new(DateTime.new(1978,8,3,23,0,0),DateTime.new(1984,3,16,0,0,0),0,0,'WET'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,16,0,0,0),DateTime.new(1985,12,31,23,0,0),3600,0,'CET'))
add_period(TimezonePeriod.new(DateTime.new(1985,12,31,23,0,0),nil,0,0,'WET'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
