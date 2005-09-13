require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Davis < Timezone #:nodoc:
setup
set_identifier('Antarctica/Davis')
add_period(TimezonePeriod.new(nil,DateTime.new(1957,1,13,0,0,0),0,0,:'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1957,1,13,0,0,0),DateTime.new(1964,10,31,17,0,0),25200,0,:'DAVT'))
add_period(TimezonePeriod.new(DateTime.new(1964,10,31,17,0,0),DateTime.new(1969,2,1,0,0,0),0,0,:'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1969,2,1,0,0,0),nil,25200,0,:'DAVT'))
end
end
end
end
