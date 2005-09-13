require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Dominica < Timezone #:nodoc:
setup
set_identifier('America/Dominica')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,6,36),-14736,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,6,36),nil,-14400,0,:'AST'))
end
end
end
end
