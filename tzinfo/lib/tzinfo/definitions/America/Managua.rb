require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Managua < Timezone #:nodoc:
setup
set_identifier('America/Managua')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52085564777,21600),0,Date::ITALY),-20708,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52085564777,21600),0,Date::ITALY),DateTime.new0(Rational.new!(8739402263,3600),0,Date::ITALY),-20712,0,:'MMT')}
add_period(1934,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(8739402263,3600),0,Date::ITALY),DateTime.new0(Rational.new!(9767215,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1973,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(9767215,4),0,Date::ITALY),DateTime.new0(Rational.new!(58619033,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1975,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58619033,24),0,Date::ITALY),DateTime.new0(Rational.new!(9775803,4),0,Date::ITALY),-21600,0,:'CT')}
add_period(1979,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9775803,4),0,Date::ITALY),DateTime.new0(Rational.new!(58657193,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1979,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58657193,24),0,Date::ITALY),DateTime.new0(Rational.new!(9777259,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1980,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9777259,4),0,Date::ITALY),DateTime.new0(Rational.new!(58665929,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1980,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58665929,24),0,Date::ITALY),DateTime.new0(Rational.new!(29383475,12),0,Date::ITALY),-21600,0,:'CST')}
add_period(1992,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29383475,12),0,Date::ITALY),DateTime.new0(Rational.new!(58773353,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58773353,24),0,Date::ITALY),DateTime.new0(Rational.new!(29387867,12),0,Date::ITALY),-21600,0,:'CST')}
add_period(1993,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29387867,12),0,Date::ITALY),DateTime.new0(Rational.new!(58827569,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1998,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58827569,24),0,Date::ITALY),DateTime.new0(Rational.new!(9813883,4),0,Date::ITALY),-21600,0,:'CT')}
add_period(2005,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(9813883,4),0,Date::ITALY),DateTime.new0(Rational.new!(58887497,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(2005,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58887497,24),0,Date::ITALY),nil,-21600,0,:'CST')}
end
end
end
end
