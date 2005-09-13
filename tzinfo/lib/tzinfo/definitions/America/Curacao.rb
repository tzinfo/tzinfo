require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Curacao < Timezone #:nodoc:
setup
set_identifier('America/Curacao')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,2,12,4,35,44),-16544,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,2,12,4,35,44),DateTime.new(1965,1,1,4,30,0),-16200,0,:'ANT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,1,4,30,0),nil,-14400,0,:'AST'))
end
end
end
end
