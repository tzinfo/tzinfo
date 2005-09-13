require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Guam < Timezone #:nodoc:
setup
set_identifier('Pacific/Guam')
add_period(TimezonePeriod.new(nil,DateTime.new(1844,12,31,14,21,0),-51660,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1844,12,31,14,21,0),DateTime.new(1900,12,31,14,21,0),34740,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,14,21,0),DateTime.new(2000,12,22,14,0,0),36000,0,:'GST'))
add_period(TimezonePeriod.new(DateTime.new(2000,12,22,14,0,0),nil,36000,0,:'ChST'))
end
end
end
end
