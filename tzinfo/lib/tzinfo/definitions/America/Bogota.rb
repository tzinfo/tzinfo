require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Bogota < Timezone #:nodoc:
setup
set_identifier('America/Bogota')
add_period(TimezonePeriod.new(nil,DateTime.new(1884,3,13,4,56,20),-17780,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1884,3,13,4,56,20),DateTime.new(1914,11,23,4,56,20),-17780,0,:'BMT'))
add_period(TimezonePeriod.new(DateTime.new(1914,11,23,4,56,20),DateTime.new(1992,5,2,5,0,0),-18000,0,:'COT'))
add_period(TimezonePeriod.new(DateTime.new(1992,5,2,5,0,0),DateTime.new(1992,12,31,4,0,0),-18000,3600,:'COST'))
add_period(TimezonePeriod.new(DateTime.new(1992,12,31,4,0,0),DateTime.new(2045,9,3,22,27,53),-18000,0,:'COT'))
end
end
end
end
