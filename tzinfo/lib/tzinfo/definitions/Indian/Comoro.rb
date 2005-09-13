require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Comoro < Timezone #:nodoc:
setup
set_identifier('Indian/Comoro')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,6,30,21,6,56),10384,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,6,30,21,6,56),nil,10800,0,:'EAT'))
end
end
end
end
