require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Wallis < Timezone #:nodoc:
setup
set_identifier('Pacific/Wallis')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,11,44,40),44120,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,11,44,40),nil,43200,0,:'WFT'))
end
end
end
end
