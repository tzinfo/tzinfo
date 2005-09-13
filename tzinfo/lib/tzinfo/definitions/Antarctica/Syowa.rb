require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Syowa < Timezone #:nodoc:
setup
set_identifier('Antarctica/Syowa')
add_period(TimezonePeriod.new(nil,DateTime.new(1957,1,29,0,0,0),0,0,:'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1957,1,29,0,0,0),nil,10800,0,:'SYOT'))
end
end
end
end
