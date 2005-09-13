require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Tortola < Timezone #:nodoc:
setup
set_identifier('America/Tortola')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,18,28),-15508,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,18,28),nil,-14400,0,:'AST'))
end
end
end
end
