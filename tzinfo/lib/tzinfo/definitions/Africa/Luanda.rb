require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Luanda < Timezone #:nodoc:
setup
set_identifier('Africa/Luanda')
add_period(TimezonePeriod.new(nil,DateTime.new(1891,12,31,23,7,4),3176,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1891,12,31,23,7,4),DateTime.new(1911,5,25,23,7,56),3124,0,:'AOT'))
add_period(TimezonePeriod.new(DateTime.new(1911,5,25,23,7,56),nil,3600,0,:'WAT'))
end
end
end
end
