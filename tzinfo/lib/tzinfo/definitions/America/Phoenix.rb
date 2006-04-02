require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Phoenix < Timezone #:nodoc:
setup
set_identifier('America/Phoenix')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(57819199,24),0,Date::ITALY),-26898,0,:'LMT')}
add_period(1883,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(57819199,24),0,Date::ITALY),DateTime.new0(Rational.new!(19373471,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1918,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19373471,8),0,Date::ITALY),DateTime.new0(Rational.new!(14531363,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14531363,6),0,Date::ITALY),DateTime.new0(Rational.new!(19376383,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1919,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19376383,8),0,Date::ITALY),DateTime.new0(Rational.new!(14533547,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1919,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14533547,6),0,Date::ITALY),DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),DateTime.new0(Rational.new!(3500770681,1440),0,Date::ITALY),-25200,3600,:'MWT')}
add_period(1944,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(3500770681,1440),0,Date::ITALY),DateTime.new0(Rational.new!(3500901781,1440),0,Date::ITALY),-25200,0,:'MST')}
add_period(1944,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(3500901781,1440),0,Date::ITALY),DateTime.new0(Rational.new!(3501165241,1440),0,Date::ITALY),-25200,3600,:'MWT')}
add_period(1944,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(3501165241,1440),0,Date::ITALY),DateTime.new0(Rational.new!(19516887,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19516887,8),0,Date::ITALY),DateTime.new0(Rational.new!(14638757,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14638757,6),0,Date::ITALY),nil,-25200,0,:'MST')}
end
end
end
end
