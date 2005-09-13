require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Vostok < Timezone #:nodoc:
setup
set_identifier('Antarctica/Vostok')
add_period(TimezonePeriod.new(nil,DateTime.new(1957,12,16,0,0,0),0,0,:'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1957,12,16,0,0,0),nil,21600,0,:'VOST'))
end
end
end
end
