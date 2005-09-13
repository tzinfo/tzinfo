require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Tegucigalpa < Timezone #:nodoc:
setup
set_identifier('America/Tegucigalpa')
add_period(TimezonePeriod.new(nil,DateTime.new(1921,4,1,5,48,52),-20932,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1921,4,1,5,48,52),DateTime.new(1987,5,3,6,0,0),-21600,0,:'CT'))
add_period(TimezonePeriod.new(DateTime.new(1987,5,3,6,0,0),DateTime.new(1987,9,27,5,0,0),-21600,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,27,5,0,0),DateTime.new(1988,5,1,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1988,5,1,6,0,0),DateTime.new(1988,9,25,5,0,0),-21600,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,25,5,0,0),DateTime.new(2045,9,3,22,30,4),-21600,0,:'CST'))
end
end
end
end
