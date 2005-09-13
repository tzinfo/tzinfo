require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Mayotte < Timezone #:nodoc:
setup
set_identifier('Indian/Mayotte')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,6,30,20,59,4),10856,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,6,30,20,59,4),nil,10800,0,:'EAT'))
end
end
end
end
