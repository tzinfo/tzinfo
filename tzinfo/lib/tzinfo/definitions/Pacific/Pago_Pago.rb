require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Pago_Pago < Timezone #:nodoc:
setup
set_identifier('Pacific/Pago_Pago')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,7,4,11,22,48),45432,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,7,4,11,22,48),DateTime.new(1911,1,1,11,22,48),-40968,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,1,1,11,22,48),DateTime.new(1950,1,1,11,30,0),-41400,0,:'SAMT'))
add_period(TimezonePeriod.new(DateTime.new(1950,1,1,11,30,0),DateTime.new(1967,4,1,11,0,0),-39600,0,:'NST'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,1,11,0,0),DateTime.new(1983,11,30,11,0,0),-39600,0,:'BST'))
add_period(TimezonePeriod.new(DateTime.new(1983,11,30,11,0,0),nil,-39600,0,:'SST'))
end
end
end
end
