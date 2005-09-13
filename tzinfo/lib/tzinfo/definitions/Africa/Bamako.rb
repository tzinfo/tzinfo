require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bamako < Timezone #:nodoc:
setup
set_identifier('Africa/Bamako')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,0,32,0),-1920,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,0,32,0),DateTime.new(1934,2,26,0,0,0),0,0,:'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,26,0,0,0),DateTime.new(1960,6,20,1,0,0),-3600,0,:'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1960,6,20,1,0,0),nil,0,0,:'GMT'))
end
end
end
end
