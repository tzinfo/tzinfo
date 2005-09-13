require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Christmas < Timezone #:nodoc:
setup
set_identifier('Indian/Christmas')
add_period(TimezonePeriod.new(nil,DateTime.new(1895,1,31,16,57,8),25372,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1895,1,31,16,57,8),nil,25200,0,:'CXT'))
end
end
end
end
