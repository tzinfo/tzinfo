require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Anguilla < Timezone #:nodoc:
setup
set_identifier('America/Anguilla')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,3,2,4,12,16),-15136,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,3,2,4,12,16),nil,-14400,0,:'AST'))
end
end
end
end
