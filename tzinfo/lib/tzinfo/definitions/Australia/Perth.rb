require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Perth < Timezone #:nodoc:
setup
set_identifier('Australia/Perth')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17377402883,7200),0,Date::ITALY),27804,0,:'LMT')}
add_period(1895,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(17377402883,7200),0,Date::ITALY),DateTime.new0(Rational.new!(3486570001,1440),0,Date::ITALY),28800,0,:'WST')}
add_period(1916,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3486570001,1440),0,Date::ITALY),DateTime.new0(Rational.new!(58111493,24),0,Date::ITALY),28800,3600,:'WST')}
add_period(1917,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58111493,24),0,Date::ITALY),DateTime.new0(Rational.new!(9721441,4),0,Date::ITALY),28800,0,:'WST')}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(9721441,4),0,Date::ITALY),DateTime.new0(Rational.new!(58330733,24),0,Date::ITALY),28800,3600,:'WST')}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58330733,24),0,Date::ITALY),DateTime.new0(Rational.new!(9722517,4),0,Date::ITALY),28800,0,:'WST')}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9722517,4),0,Date::ITALY),DateTime.new0(Rational.new!(58339469,24),0,Date::ITALY),28800,3600,:'WST')}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58339469,24),0,Date::ITALY),DateTime.new0(Rational.new!(14585437,6),0,Date::ITALY),28800,0,:'WST')}
add_period(1943,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(14585437,6),0,Date::ITALY),DateTime.new0(Rational.new!(9769389,4),0,Date::ITALY),28800,0,:'WST')}
add_period(1974,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9769389,4),0,Date::ITALY),DateTime.new0(Rational.new!(9769893,4),0,Date::ITALY),28800,3600,:'WST')}
add_period(1975,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9769893,4),0,Date::ITALY),DateTime.new0(Rational.new!(9782549,4),0,Date::ITALY),28800,0,:'WST')}
add_period(1983,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782549,4),0,Date::ITALY),DateTime.new0(Rational.new!(9783053,4),0,Date::ITALY),28800,3600,:'WST')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9783053,4),0,Date::ITALY),DateTime.new0(Rational.new!(9794309,4),0,Date::ITALY),28800,0,:'WST')}
add_period(1991,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9794309,4),0,Date::ITALY),DateTime.new0(Rational.new!(9794729,4),0,Date::ITALY),28800,3600,:'WST')}
add_period(1992,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(9794729,4),0,Date::ITALY),nil,28800,0,:'WST')}
end
end
end
end
