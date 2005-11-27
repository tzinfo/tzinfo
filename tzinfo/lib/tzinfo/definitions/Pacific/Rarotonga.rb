require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Rarotonga < Timezone #:nodoc:
setup
set_identifier('Pacific/Rarotonga')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26086168193,10800),0,Date::ITALY),-38344,0,:'LMT')}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26086168193,10800),0,Date::ITALY),DateTime.new0(Rational.new!(39101199,16),0,Date::ITALY),-37800,0,:'CKT')}
add_period(1978,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(39101199,16),0,Date::ITALY),DateTime.new0(Rational.new!(117308971,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1979,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117308971,48),0,Date::ITALY),DateTime.new0(Rational.new!(29330099,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1979,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29330099,12),0,Date::ITALY),DateTime.new0(Rational.new!(117326443,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1980,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117326443,48),0,Date::ITALY),DateTime.new0(Rational.new!(29334467,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1980,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29334467,12),0,Date::ITALY),DateTime.new0(Rational.new!(117343915,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117343915,48),0,Date::ITALY),DateTime.new0(Rational.new!(29338835,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1981,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29338835,12),0,Date::ITALY),DateTime.new0(Rational.new!(117361723,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117361723,48),0,Date::ITALY),DateTime.new0(Rational.new!(29343287,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1982,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29343287,12),0,Date::ITALY),DateTime.new0(Rational.new!(117379195,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117379195,48),0,Date::ITALY),DateTime.new0(Rational.new!(29347655,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1983,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29347655,12),0,Date::ITALY),DateTime.new0(Rational.new!(117396667,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117396667,48),0,Date::ITALY),DateTime.new0(Rational.new!(29352023,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1984,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29352023,12),0,Date::ITALY),DateTime.new0(Rational.new!(117414139,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117414139,48),0,Date::ITALY),DateTime.new0(Rational.new!(29356391,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1985,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29356391,12),0,Date::ITALY),DateTime.new0(Rational.new!(117431611,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117431611,48),0,Date::ITALY),DateTime.new0(Rational.new!(29360759,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1986,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29360759,12),0,Date::ITALY),DateTime.new0(Rational.new!(117449083,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117449083,48),0,Date::ITALY),DateTime.new0(Rational.new!(29365127,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1987,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29365127,12),0,Date::ITALY),DateTime.new0(Rational.new!(117466891,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117466891,48),0,Date::ITALY),DateTime.new0(Rational.new!(29369579,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1988,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29369579,12),0,Date::ITALY),DateTime.new0(Rational.new!(117484363,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117484363,48),0,Date::ITALY),DateTime.new0(Rational.new!(29373947,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1989,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29373947,12),0,Date::ITALY),DateTime.new0(Rational.new!(117501835,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117501835,48),0,Date::ITALY),DateTime.new0(Rational.new!(29378315,12),0,Date::ITALY),-36000,0,:'CKT')}
add_period(1990,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29378315,12),0,Date::ITALY),DateTime.new0(Rational.new!(117519307,48),0,Date::ITALY),-36000,1800,:'CKHST')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117519307,48),0,Date::ITALY),nil,-36000,0,:'CKT')}
end
end
end
end
