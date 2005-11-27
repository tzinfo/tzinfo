require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Costa_Rica < Timezone #:nodoc:
setup
set_identifier('America/Costa_Rica')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10417112929,4320),0,Date::ITALY),-20180,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10417112929,4320),0,Date::ITALY),DateTime.new0(Rational.new!(10466084449,4320),0,Date::ITALY),-20180,0,:'SJMT')}
add_period(1921,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10466084449,4320),0,Date::ITALY),DateTime.new0(Rational.new!(9775719,4),0,Date::ITALY),-21600,0,:'CT')}
add_period(1979,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(9775719,4),0,Date::ITALY),DateTime.new0(Rational.new!(58656665,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1979,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58656665,24),0,Date::ITALY),DateTime.new0(Rational.new!(9777175,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1980,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(9777175,4),0,Date::ITALY),DateTime.new0(Rational.new!(58665401,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1980,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58665401,24),0,Date::ITALY),DateTime.new0(Rational.new!(9793103,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1991,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(9793103,4),0,Date::ITALY),DateTime.new0(Rational.new!(58762529,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1991,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(58762529,24),0,Date::ITALY),DateTime.new0(Rational.new!(9794559,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1992,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(9794559,4),0,Date::ITALY),DateTime.new0(Rational.new!(58768721,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58768721,24),0,Date::ITALY),nil,-21600,0,:'CST')}
end
end
end
end
