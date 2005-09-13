require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tahiti < Timezone #:nodoc:
setup
set_identifier('Pacific/Tahiti')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,10,1,9,58,16),-35896,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,10,1,9,58,16),nil,-36000,0,:'TAHT'))
end
end
end
end
