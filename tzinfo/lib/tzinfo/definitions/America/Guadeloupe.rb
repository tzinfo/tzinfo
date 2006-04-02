require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guadeloupe < Timezone #:nodoc:
setup
set_identifier('America/Guadeloupe')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13063656623,5400),0,Date::ITALY),-14768,0,:LMT)}
add_period(1911,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(13063656623,5400),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
