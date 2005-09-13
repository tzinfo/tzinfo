require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Cayenne < Timezone #:nodoc:
setup
set_identifier('America/Cayenne')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,3,29,20),-12560,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,3,29,20),DateTime.new(1967,10,1,4,0,0),-14400,0,:'GFT'))
add_period(TimezonePeriod.new(DateTime.new(1967,10,1,4,0,0),nil,-10800,0,:'GFT'))
end
end
end
end
