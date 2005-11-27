require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kampala < Timezone #:nodoc:
setup
set_identifier('Africa/Kampala')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10477850731,4320),0,Date::ITALY),7780,0,:'LMT')}
add_period(1928,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(10477850731,4320),0,Date::ITALY),DateTime.new0(Rational.new!(19407819,8),0,Date::ITALY),10800,0,:'EAT')}
add_period(1929,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19407819,8),0,Date::ITALY),DateTime.new0(Rational.new!(116762467,48),0,Date::ITALY),9000,0,:'BEAT')}
add_period(1947,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116762467,48),0,Date::ITALY),DateTime.new0(Rational.new!(14030434861,5760),0,Date::ITALY),9885,0,:'BEAUT')}
add_period(1956,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14030434861,5760),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
