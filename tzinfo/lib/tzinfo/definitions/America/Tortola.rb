require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Tortola < Timezone #:nodoc:
setup
set_identifier('America/Tortola')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52255123477,21600),0,Date::ITALY),-15508,0,:LMT)}
add_period(1911,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(52255123477,21600),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
