require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guatemala < Timezone #:nodoc:
setup
set_identifier('America/Guatemala')
add_period(TimezonePeriod.new(nil,DateTime.new(1918,10,5,6,2,4),-21724,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,5,6,2,4),DateTime.new(1973,11,25,6,0,0),-21600,0,:'CT'))
add_period(TimezonePeriod.new(DateTime.new(1973,11,25,6,0,0),DateTime.new(1974,2,24,5,0,0),-21600,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1974,2,24,5,0,0),DateTime.new(1983,5,21,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1983,5,21,6,0,0),DateTime.new(1983,9,22,5,0,0),-21600,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,22,5,0,0),DateTime.new(1991,3,23,6,0,0),-21600,0,:'CST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,23,6,0,0),DateTime.new(1991,9,7,5,0,0),-21600,3600,:'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,7,5,0,0),DateTime.new(2045,9,3,22,37,45),-21600,0,:'CST'))
end
end
end
end
