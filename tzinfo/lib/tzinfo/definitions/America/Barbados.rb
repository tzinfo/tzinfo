require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Barbados < Timezone #:nodoc:
setup
set_identifier('America/Barbados')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52353770377,21600),0,Date::ITALY),-14308,0,:'LMT')}
add_period(1924,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52353770377,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52416885577,21600),0,Date::ITALY),-14308,0,:'BMT')}
add_period(1932,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52416885577,21600),0,Date::ITALY),DateTime.new0(Rational.new!(9773227,4),0,Date::ITALY),-14400,0,:'AT')}
add_period(1977,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(9773227,4),0,Date::ITALY),DateTime.new0(Rational.new!(58642049,24),0,Date::ITALY),-14400,3600,:'ADT')}
add_period(1977,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58642049,24),0,Date::ITALY),DateTime.new0(Rational.new!(9774459,4),0,Date::ITALY),-14400,0,:'AST')}
add_period(1978,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(9774459,4),0,Date::ITALY),DateTime.new0(Rational.new!(58650785,24),0,Date::ITALY),-14400,3600,:'ADT')}
add_period(1978,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58650785,24),0,Date::ITALY),DateTime.new0(Rational.new!(9775915,4),0,Date::ITALY),-14400,0,:'AST')}
add_period(1979,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(9775915,4),0,Date::ITALY),DateTime.new0(Rational.new!(58659521,24),0,Date::ITALY),-14400,3600,:'ADT')}
add_period(1979,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58659521,24),0,Date::ITALY),DateTime.new0(Rational.new!(9777399,4),0,Date::ITALY),-14400,0,:'AST')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(9777399,4),0,Date::ITALY),DateTime.new0(Rational.new!(58668185,24),0,Date::ITALY),-14400,3600,:'ADT')}
add_period(1980,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58668185,24),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
