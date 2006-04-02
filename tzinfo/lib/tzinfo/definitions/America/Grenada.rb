require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Grenada < Timezone #:nodoc:
setup
set_identifier('America/Grenada')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3483674887,1440),0,Date::ITALY),-14820,0,:LMT)}
add_period(1911,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(3483674887,1440),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
