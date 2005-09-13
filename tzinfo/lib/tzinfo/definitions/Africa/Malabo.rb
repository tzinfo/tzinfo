require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Malabo < Timezone #:nodoc:
setup
set_identifier('Africa/Malabo')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,23,24,52),2108,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,23,24,52),DateTime.new(1963,12,15,0,0,0),0,0,:'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,15,0,0,0),nil,3600,0,:'WAT'))
end
end
end
end
