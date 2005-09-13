require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Gambier < Timezone #:nodoc:
setup
set_identifier('Pacific/Gambier')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,10,1,8,59,48),-32388,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,10,1,8,59,48),nil,-32400,0,:'GAMT'))
end
end
end
end
