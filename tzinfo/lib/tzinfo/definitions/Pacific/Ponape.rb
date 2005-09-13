require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Ponape < Timezone #:nodoc:
setup
set_identifier('Pacific/Ponape')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,13,27,8),37972,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,13,27,8),nil,39600,0,:'PONT'))
end
end
end
end
