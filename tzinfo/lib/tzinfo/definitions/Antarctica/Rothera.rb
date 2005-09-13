require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Rothera < Timezone #:nodoc:
setup
set_identifier('Antarctica/Rothera')
add_period(TimezonePeriod.new(nil,DateTime.new(1976,12,1,0,0,0),0,0,:'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1976,12,1,0,0,0),nil,-10800,0,:'ROTT'))
end
end
end
end
