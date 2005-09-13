require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lome < Timezone #:nodoc:
setup
set_identifier('Africa/Lome')
add_period(TimezonePeriod.new(nil,DateTime.new(1892,12,31,23,55,8),292,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1892,12,31,23,55,8),nil,0,0,:'GMT'))
end
end
end
end
