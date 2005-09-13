require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class South_Georgia < Timezone #:nodoc:
setup
set_identifier('Atlantic/South_Georgia')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,2,26,8),-8768,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,2,26,8),nil,-7200,0,:'GST'))
end
end
end
end
