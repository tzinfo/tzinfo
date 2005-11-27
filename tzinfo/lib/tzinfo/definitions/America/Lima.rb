require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Lima < Timezone #:nodoc:
setup
set_identifier('America/Lima')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17361854741,7200),0,Date::ITALY),-18492,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17361854741,7200),0,Date::ITALY),DateTime.new0(Rational.new!(17410685143,7200),0,Date::ITALY),-18516,0,:'LMT')}
add_period(1908,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(17410685143,7200),0,Date::ITALY),DateTime.new0(Rational.new!(58293593,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1938,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58293593,24),0,Date::ITALY),DateTime.new0(Rational.new!(7286969,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1938,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7286969,3),0,Date::ITALY),DateTime.new0(Rational.new!(58300001,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1938,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58300001,24),0,Date::ITALY),DateTime.new0(Rational.new!(7288046,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1939,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7288046,3),0,Date::ITALY),DateTime.new0(Rational.new!(58308737,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58308737,24),0,Date::ITALY),DateTime.new0(Rational.new!(7289138,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1940,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7289138,3),0,Date::ITALY),DateTime.new0(Rational.new!(58714361,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1986,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58714361,24),0,Date::ITALY),DateTime.new0(Rational.new!(7339565,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1986,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7339565,3),0,Date::ITALY),DateTime.new0(Rational.new!(58723121,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1987,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58723121,24),0,Date::ITALY),DateTime.new0(Rational.new!(7340660,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1987,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7340660,3),0,Date::ITALY),DateTime.new0(Rational.new!(58749425,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1990,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58749425,24),0,Date::ITALY),DateTime.new0(Rational.new!(7343948,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1990,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7343948,3),0,Date::ITALY),DateTime.new0(Rational.new!(58784489,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1994,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58784489,24),0,Date::ITALY),DateTime.new0(Rational.new!(7348331,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1994,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7348331,3),0,Date::ITALY),nil,-18000,0,:'PET')}
end
end
end
end
