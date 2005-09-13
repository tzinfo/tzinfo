require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Banjul < Timezone #:nodoc:
setup
set_identifier('Africa/Banjul')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,1,6,36),-3996,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,1,6,36),DateTime.new(1935,1,1,1,6,36),-3996,0,:'BMT'))
add_period(TimezonePeriod.new(DateTime.new(1935,1,1,1,6,36),DateTime.new(1964,1,1,1,0,0),-3600,0,:'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1964,1,1,1,0,0),nil,0,0,:'GMT'))
end
end
end
end
