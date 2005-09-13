require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Puerto_Rico < Timezone #:nodoc:
setup
set_identifier('America/Puerto_Rico')
add_period(TimezonePeriod.new(nil,DateTime.new(1899,3,28,16,24,25),-15865,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1899,3,28,16,24,25),DateTime.new(1942,5,3,4,0,0),-14400,0,:'AST'))
add_period(TimezonePeriod.new(DateTime.new(1942,5,3,4,0,0),DateTime.new(1945,9,30,5,0,0),-14400,3600,:'AWT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,5,0,0),nil,-14400,0,:'AST'))
end
end
end
end
