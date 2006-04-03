require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Bogota < Timezone #:nodoc:
setup
set_identifier('America/Bogota')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10407954409,4320),0,Date::ITALY),-17780,0,:LMT)}
add_period(1884,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(10407954409,4320),0,Date::ITALY),DateTime.new0(Rational.new!(10456385929,4320),0,Date::ITALY),-17780,0,:BMT)}
add_period(1914,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(10456385929,4320),0,Date::ITALY),704869200,-18000,0,:COT)}
add_period(1992,5) {TimezonePeriod.new(704869200,733896000,-18000,3600,:COST)}
add_period(1993,4) {TimezonePeriod.new(733896000,nil,-18000,0,:COT)}
end
end
end
end
