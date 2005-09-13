require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Kitts < Timezone #:nodoc:
setup
set_identifier('America/St_Kitts')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,3,2,4,10,52),-15052,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,3,2,4,10,52),nil,-14400,0,:'AST'))
end
end
end
end
