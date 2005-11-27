require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Taipei < Timezone #:nodoc:
setup
set_identifier('Asia/Taipei')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(193084733,80),0,Date::ITALY),29160,0,:'LMT')}
add_period(1895,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(193084733,80),0,Date::ITALY),DateTime.new0(Rational.new!(14589457,6),0,Date::ITALY),28800,0,:'CT')}
add_period(1945,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14589457,6),0,Date::ITALY),DateTime.new0(Rational.new!(19453833,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453833,8),0,Date::ITALY),DateTime.new0(Rational.new!(14591647,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1946,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14591647,6),0,Date::ITALY),DateTime.new0(Rational.new!(19456753,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1946,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19456753,8),0,Date::ITALY),DateTime.new0(Rational.new!(14593837,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1947,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14593837,6),0,Date::ITALY),DateTime.new0(Rational.new!(19459673,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1947,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19459673,8),0,Date::ITALY),DateTime.new0(Rational.new!(14596033,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14596033,6),0,Date::ITALY),DateTime.new0(Rational.new!(19462601,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1948,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19462601,8),0,Date::ITALY),DateTime.new0(Rational.new!(14598223,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14598223,6),0,Date::ITALY),DateTime.new0(Rational.new!(19465521,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1949,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19465521,8),0,Date::ITALY),DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),DateTime.new0(Rational.new!(19468441,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1950,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19468441,8),0,Date::ITALY),DateTime.new0(Rational.new!(14602603,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14602603,6),0,Date::ITALY),DateTime.new0(Rational.new!(19471361,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19471361,8),0,Date::ITALY),DateTime.new0(Rational.new!(14604433,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1952,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(14604433,6),0,Date::ITALY),DateTime.new0(Rational.new!(19474537,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1952,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19474537,8),0,Date::ITALY),DateTime.new0(Rational.new!(14606809,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1953,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14606809,6),0,Date::ITALY),DateTime.new0(Rational.new!(19477457,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1953,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19477457,8),0,Date::ITALY),DateTime.new0(Rational.new!(14608999,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1954,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14608999,6),0,Date::ITALY),DateTime.new0(Rational.new!(19480377,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1954,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19480377,8),0,Date::ITALY),DateTime.new0(Rational.new!(14611189,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1955,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14611189,6),0,Date::ITALY),DateTime.new0(Rational.new!(19483049,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1955,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19483049,8),0,Date::ITALY),DateTime.new0(Rational.new!(14613385,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1956,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14613385,6),0,Date::ITALY),DateTime.new0(Rational.new!(19485977,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1956,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19485977,8),0,Date::ITALY),DateTime.new0(Rational.new!(14615575,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1957,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14615575,6),0,Date::ITALY),DateTime.new0(Rational.new!(19488897,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1957,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19488897,8),0,Date::ITALY),DateTime.new0(Rational.new!(14617765,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1958,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14617765,6),0,Date::ITALY),DateTime.new0(Rational.new!(19491817,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1958,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19491817,8),0,Date::ITALY),DateTime.new0(Rational.new!(14619955,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1959,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14619955,6),0,Date::ITALY),DateTime.new0(Rational.new!(19494737,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1959,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19494737,8),0,Date::ITALY),DateTime.new0(Rational.new!(14622517,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1960,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(14622517,6),0,Date::ITALY),DateTime.new0(Rational.new!(19497665,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1960,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19497665,8),0,Date::ITALY),DateTime.new0(Rational.new!(14624707,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1961,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(14624707,6),0,Date::ITALY),DateTime.new0(Rational.new!(19500585,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1961,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19500585,8),0,Date::ITALY),DateTime.new0(Rational.new!(14652829,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1974,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14652829,6),0,Date::ITALY),DateTime.new0(Rational.new!(19538569,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1974,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19538569,8),0,Date::ITALY),DateTime.new0(Rational.new!(14655019,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1975,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14655019,6),0,Date::ITALY),DateTime.new0(Rational.new!(19541489,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1975,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19541489,8),0,Date::ITALY),DateTime.new0(Rational.new!(14666521,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1980,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(14666521,6),0,Date::ITALY),DateTime.new0(Rational.new!(19556097,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1980,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19556097,8),0,Date::ITALY),nil,28800,0,:'CST')}
end
end
end
end
