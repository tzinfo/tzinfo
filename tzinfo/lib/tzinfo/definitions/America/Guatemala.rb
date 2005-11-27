require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guatemala < Timezone #:nodoc:
setup
set_identifier('America/Guatemala')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52312429831,21600),0,Date::ITALY),-21724,0,:'LMT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(52312429831,21600),0,Date::ITALY),DateTime.new0(Rational.new!(9768047,4),0,Date::ITALY),-21600,0,:'CT')}
add_period(1973,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9768047,4),0,Date::ITALY),DateTime.new0(Rational.new!(58610465,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1974,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58610465,24),0,Date::ITALY),DateTime.new0(Rational.new!(9781903,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1983,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(9781903,4),0,Date::ITALY),DateTime.new0(Rational.new!(58694393,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58694393,24),0,Date::ITALY),DateTime.new0(Rational.new!(9793355,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9793355,4),0,Date::ITALY),DateTime.new0(Rational.new!(58764161,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58764161,24),0,Date::ITALY),nil,-21600,0,:'CST')}
end
end
end
end
