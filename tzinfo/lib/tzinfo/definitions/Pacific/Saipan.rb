require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Saipan < Timezone #:nodoc:
setup
set_identifier('Pacific/Saipan')
add_period(TimezonePeriod.new(nil,DateTime.new(1844,12,31,14,17,0),-51420,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1844,12,31,14,17,0),DateTime.new(1900,12,31,14,17,0),34980,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,14,17,0),DateTime.new(1969,9,30,15,0,0),32400,0,:'MPT'))
add_period(TimezonePeriod.new(DateTime.new(1969,9,30,15,0,0),DateTime.new(2000,12,22,14,0,0),36000,0,:'MPT'))
add_period(TimezonePeriod.new(DateTime.new(2000,12,22,14,0,0),nil,36000,0,:'ChST'))
end
end
end
end
