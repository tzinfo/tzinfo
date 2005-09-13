require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Guadalcanal < Timezone #:nodoc:
setup
set_identifier('Pacific/Guadalcanal')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,9,30,13,20,12),38388,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,9,30,13,20,12),nil,39600,0,:'SBT'))
end
end
end
end
