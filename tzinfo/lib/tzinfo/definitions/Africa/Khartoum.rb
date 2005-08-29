require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Khartoum < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Khartoum')
add_period(TimezonePeriod.new(nil,DateTime.new(1930,12,31,21,49,52),7808,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1930,12,31,21,49,52),DateTime.new(1970,4,30,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1970,4,30,22,0,0),DateTime.new(1970,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1970,10,14,21,0,0),DateTime.new(1971,4,29,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1971,4,29,22,0,0),DateTime.new(1971,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,14,21,0,0),DateTime.new(1972,4,29,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1972,4,29,22,0,0),DateTime.new(1972,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1972,10,14,21,0,0),DateTime.new(1973,4,28,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1973,4,28,22,0,0),DateTime.new(1973,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1973,10,14,21,0,0),DateTime.new(1974,4,27,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1974,4,27,22,0,0),DateTime.new(1974,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1974,10,14,21,0,0),DateTime.new(1975,4,26,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1975,4,26,22,0,0),DateTime.new(1975,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1975,10,14,21,0,0),DateTime.new(1976,4,24,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1976,4,24,22,0,0),DateTime.new(1976,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1976,10,14,21,0,0),DateTime.new(1977,4,23,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1977,4,23,22,0,0),DateTime.new(1977,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1977,10,14,21,0,0),DateTime.new(1978,4,29,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,29,22,0,0),DateTime.new(1978,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1978,10,14,21,0,0),DateTime.new(1979,4,28,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1979,4,28,22,0,0),DateTime.new(1979,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,14,21,0,0),DateTime.new(1980,4,26,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,26,22,0,0),DateTime.new(1980,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1980,10,14,21,0,0),DateTime.new(1981,4,25,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1981,4,25,22,0,0),DateTime.new(1981,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1981,10,14,21,0,0),DateTime.new(1982,4,24,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1982,4,24,22,0,0),DateTime.new(1982,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1982,10,14,21,0,0),DateTime.new(1983,4,23,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1983,4,23,22,0,0),DateTime.new(1983,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1983,10,14,21,0,0),DateTime.new(1984,4,28,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1984,4,28,22,0,0),DateTime.new(1984,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1984,10,14,21,0,0),DateTime.new(1985,4,27,22,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1985,4,27,22,0,0),DateTime.new(1985,10,14,21,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1985,10,14,21,0,0),DateTime.new(2000,1,15,10,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(2000,1,15,10,0,0),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
