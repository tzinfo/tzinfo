require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Jamaica < Timezone #:nodoc:
setup
set_identifier('America/Jamaica')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(361705307,150),0,Date::ITALY),-18432,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(361705307,150),0,Date::ITALY),DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),-18432,0,:'KMT')}
add_period(1912,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),DateTime.new0(Rational.new!(58611979,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1974,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58611979,24),0,Date::ITALY),DateTime.new0(Rational.new!(58619203,24),0,Date::ITALY),-18000,0,:'ET')}
add_period(1975,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58619203,24),0,Date::ITALY),DateTime.new0(Rational.new!(9770847,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1975,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9770847,4),0,Date::ITALY),DateTime.new0(Rational.new!(58629451,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1976,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58629451,24),0,Date::ITALY),DateTime.new0(Rational.new!(9772331,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1976,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9772331,4),0,Date::ITALY),DateTime.new0(Rational.new!(58638187,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1977,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58638187,24),0,Date::ITALY),DateTime.new0(Rational.new!(9773787,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1977,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9773787,4),0,Date::ITALY),DateTime.new0(Rational.new!(58647091,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1978,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58647091,24),0,Date::ITALY),DateTime.new0(Rational.new!(9775243,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1978,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9775243,4),0,Date::ITALY),DateTime.new0(Rational.new!(58655827,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1979,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58655827,24),0,Date::ITALY),DateTime.new0(Rational.new!(9776699,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1979,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9776699,4),0,Date::ITALY),DateTime.new0(Rational.new!(58664563,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58664563,24),0,Date::ITALY),DateTime.new0(Rational.new!(9778155,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1980,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9778155,4),0,Date::ITALY),DateTime.new0(Rational.new!(58673299,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1981,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58673299,24),0,Date::ITALY),DateTime.new0(Rational.new!(9779611,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1981,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9779611,4),0,Date::ITALY),DateTime.new0(Rational.new!(58682035,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1982,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58682035,24),0,Date::ITALY),DateTime.new0(Rational.new!(9781095,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1982,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9781095,4),0,Date::ITALY),DateTime.new0(Rational.new!(58690771,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1983,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690771,24),0,Date::ITALY),DateTime.new0(Rational.new!(9782551,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1983,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782551,4),0,Date::ITALY),DateTime.new0(Rational.new!(58696817,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1984,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58696817,24),0,Date::ITALY),nil,-18000,0,:'EST')}
end
end
end
end
