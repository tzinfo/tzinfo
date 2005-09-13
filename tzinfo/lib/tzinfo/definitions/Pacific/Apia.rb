require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Apia < Timezone #:nodoc:
setup
set_identifier('Pacific/Apia')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,7,4,11,26,56),45184,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,7,4,11,26,56),DateTime.new(1911,1,1,11,26,56),-41216,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,1,1,11,26,56),DateTime.new(1950,1,1,11,30,0),-41400,0,:'SAMT'))
add_period(TimezonePeriod.new(DateTime.new(1950,1,1,11,30,0),nil,-39600,0,:'WST'))
end
end
end
end
