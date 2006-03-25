require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Pago_Pago < Timezone #:nodoc:
setup
set_identifier('Pacific/Pago_Pago')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2889041969,1200),0,Date::ITALY),45432,0,:'LMT')}
add_period(1879,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(2889041969,1200),0,Date::ITALY),DateTime.new0(Rational.new!(2902845569,1200),0,Date::ITALY),-40968,0,:'LMT')}
add_period(1911,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2902845569,1200),0,Date::ITALY),DateTime.new0(Rational.new!(116797583,48),0,Date::ITALY),-41400,0,:'SAMT')}
add_period(1950,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(116797583,48),0,Date::ITALY),DateTime.new0(Rational.new!(58549967,24),0,Date::ITALY),-39600,0,:'NST')}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58549967,24),0,Date::ITALY),439038000,-39600,0,:'BST')}
add_period(1983,11) {TimezonePeriod.new(439038000,nil,-39600,0,:'SST')}
end
end
end
end
