require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Reunion < Timezone #:nodoc:
setup
set_identifier('Indian/Reunion')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,5,31,20,18,8),13312,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,5,31,20,18,8),nil,14400,0,:'RET'))
end
end
end
end
