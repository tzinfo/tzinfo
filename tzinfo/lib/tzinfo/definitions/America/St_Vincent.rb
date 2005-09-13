require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Vincent < Timezone #:nodoc:
setup
set_identifier('America/St_Vincent')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,4,56),-14696,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,4,56),DateTime.new(1912,1,1,4,4,56),-14696,0,:'KMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,4,4,56),nil,-14400,0,:'AST'))
end
end
end
end
