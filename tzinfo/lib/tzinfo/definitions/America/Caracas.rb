require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Caracas < Timezone #:nodoc:
setup
set_identifier('America/Caracas')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,27,44),-16064,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,27,44),DateTime.new(1912,2,12,4,27,40),-16060,0,:'CMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,2,12,4,27,40),DateTime.new(1965,1,1,4,30,0),-16200,0,:'VET'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,1,4,30,0),nil,-14400,0,:'VET'))
end
end
end
end
