require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Nouakchott < Timezone #:nodoc:
setup
set_identifier('Africa/Nouakchott')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,1,3,48),-3828,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,1,3,48),DateTime.new(1934,2,26,0,0,0),0,0,:'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,26,0,0,0),DateTime.new(1960,11,28,1,0,0),-3600,0,:'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1960,11,28,1,0,0),nil,0,0,:'GMT'))
end
end
end
end
