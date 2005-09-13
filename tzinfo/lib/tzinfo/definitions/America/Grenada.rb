require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Grenada < Timezone #:nodoc:
setup
set_identifier('America/Grenada')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,7,0),-14820,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,7,0),nil,-14400,0,:'AST'))
end
end
end
end
