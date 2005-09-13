require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Antigua < Timezone #:nodoc:
setup
set_identifier('America/Antigua')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,3,2,4,7,12),-14832,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,3,2,4,7,12),DateTime.new(1951,1,1,5,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1951,1,1,5,0,0),nil,-14400,0,:'AST'))
end
end
end
end
