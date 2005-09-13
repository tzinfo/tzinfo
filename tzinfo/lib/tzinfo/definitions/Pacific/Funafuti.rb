require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Funafuti < Timezone #:nodoc:
setup
set_identifier('Pacific/Funafuti')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,3,8),43012,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,3,8),nil,43200,0,:'TVT'))
end
end
end
end
