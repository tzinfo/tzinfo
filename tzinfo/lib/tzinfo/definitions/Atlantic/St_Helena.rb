require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class St_Helena < Timezone #:nodoc:
setup
set_identifier('Atlantic/St_Helena')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,0,22,48),-1368,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,0,22,48),DateTime.new(1951,1,1,0,22,48),-1368,0,:'JMT'))
add_period(TimezonePeriod.new(DateTime.new(1951,1,1,0,22,48),nil,0,0,:'GMT'))
end
end
end
end
