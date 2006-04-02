require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Perth < Timezone #:nodoc:
setup
set_identifier('Australia/Perth')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17377402883,7200),0,Date::ITALY),27804,0,:LMT)}
add_period(1895,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(17377402883,7200),0,Date::ITALY),DateTime.new0(Rational.new!(3486570001,1440),0,Date::ITALY),28800,0,:WST)}
add_period(1916,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3486570001,1440),0,Date::ITALY),DateTime.new0(Rational.new!(58111493,24),0,Date::ITALY),28800,3600,:WST)}
add_period(1917,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58111493,24),0,Date::ITALY),DateTime.new0(Rational.new!(9721441,4),0,Date::ITALY),28800,0,:WST)}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(9721441,4),0,Date::ITALY),DateTime.new0(Rational.new!(58330733,24),0,Date::ITALY),28800,3600,:WST)}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58330733,24),0,Date::ITALY),DateTime.new0(Rational.new!(9722517,4),0,Date::ITALY),28800,0,:WST)}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9722517,4),0,Date::ITALY),DateTime.new0(Rational.new!(58339469,24),0,Date::ITALY),28800,3600,:WST)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58339469,24),0,Date::ITALY),152042400,28800,0,:WST)}
add_period(1974,10) {TimezonePeriod.new(152042400,162928800,28800,3600,:WST)}
add_period(1975,3) {TimezonePeriod.new(162928800,436298400,28800,0,:WST)}
add_period(1983,10) {TimezonePeriod.new(436298400,447184800,28800,3600,:WST)}
add_period(1984,3) {TimezonePeriod.new(447184800,690314400,28800,0,:WST)}
add_period(1991,11) {TimezonePeriod.new(690314400,699386400,28800,3600,:WST)}
add_period(1992,2) {TimezonePeriod.new(699386400,nil,28800,0,:WST)}
end
end
end
end
