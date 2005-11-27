require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Santo_Domingo < Timezone #:nodoc:
setup
set_identifier('America/Santo_Domingo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2893642433,1200),0,Date::ITALY),-16776,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2893642433,1200),0,Date::ITALY),DateTime.new0(Rational.new!(87377911,36),0,Date::ITALY),-16800,0,:'SDMT')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(87377911,36),0,Date::ITALY),DateTime.new0(Rational.new!(58546289,24),0,Date::ITALY),-18000,0,:'ET')}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58546289,24),0,Date::ITALY),DateTime.new0(Rational.new!(7318649,3),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1967,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(7318649,3),0,Date::ITALY),DateTime.new0(Rational.new!(58572497,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58572497,24),0,Date::ITALY),DateTime.new0(Rational.new!(39050219,16),0,Date::ITALY),-18000,1800,:'EHDT')}
add_period(1970,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(39050219,16),0,Date::ITALY),DateTime.new0(Rational.new!(58581233,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1970,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58581233,24),0,Date::ITALY),DateTime.new0(Rational.new!(39055547,16),0,Date::ITALY),-18000,1800,:'EHDT')}
add_period(1971,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39055547,16),0,Date::ITALY),DateTime.new0(Rational.new!(58590137,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1971,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58590137,24),0,Date::ITALY),DateTime.new0(Rational.new!(39061403,16),0,Date::ITALY),-18000,1800,:'EHDT')}
add_period(1972,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39061403,16),0,Date::ITALY),DateTime.new0(Rational.new!(58598873,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1972,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58598873,24),0,Date::ITALY),DateTime.new0(Rational.new!(39067259,16),0,Date::ITALY),-18000,1800,:'EHDT')}
add_period(1973,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39067259,16),0,Date::ITALY),DateTime.new0(Rational.new!(58607609,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1973,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58607609,24),0,Date::ITALY),DateTime.new0(Rational.new!(39073099,16),0,Date::ITALY),-18000,1800,:'EHDT')}
add_period(1974,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39073099,16),0,Date::ITALY),DateTime.new0(Rational.new!(58616345,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1974,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58616345,24),0,Date::ITALY),DateTime.new0(Rational.new!(9807387,4),0,Date::ITALY),-14400,0,:'AST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9807387,4),0,Date::ITALY),DateTime.new0(Rational.new!(9807527,4),0,Date::ITALY),-18000,0,:'ET')}
add_period(2000,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(9807527,4),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
