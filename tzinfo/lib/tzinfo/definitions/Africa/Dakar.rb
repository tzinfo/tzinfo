require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Dakar < Timezone #:nodoc:
setup
set_identifier('Africa/Dakar')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,1,9,44),-4184,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,1,9,44),DateTime.new(1941,6,1,1,0,0),-3600,0,:'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1941,6,1,1,0,0),nil,0,0,:'GMT'))
end
end
end
end
