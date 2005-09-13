require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Porto__m__Novo < Timezone #:nodoc:
setup
set_identifier('Africa/Porto-Novo')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,23,49,32),628,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,23,49,32),DateTime.new(1934,2,26,0,0,0),0,0,:'GMT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,26,0,0,0),nil,3600,0,:'WAT'))
end
end
end
end
