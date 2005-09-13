require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Truk < Timezone #:nodoc:
setup
set_identifier('Pacific/Truk')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,13,52,52),36428,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,13,52,52),nil,36000,0,:'TRUT'))
end
end
end
end
