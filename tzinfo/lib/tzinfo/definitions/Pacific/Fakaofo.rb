require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Fakaofo < Timezone #:nodoc:
setup
set_identifier('Pacific/Fakaofo')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,11,24,56),-41096,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,11,24,56),nil,-36000,0,:'TKT'))
end
end
end
end
