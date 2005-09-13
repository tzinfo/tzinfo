require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Riyadh < Timezone #:nodoc:
setup
set_identifier('Asia/Riyadh')
add_period(TimezonePeriod.new(nil,DateTime.new(1949,12,31,20,53,8),11212,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,31,20,53,8),nil,10800,0,:'AST'))
end
end
end
end
