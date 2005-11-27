require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tongatapu < Timezone #:nodoc:
setup
set_identifier('Pacific/Tongatapu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5217231571,2160),0,Date::ITALY),44360,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5217231571,2160),0,Date::ITALY),DateTime.new0(Rational.new!(174959639,72),0,Date::ITALY),44400,0,:'TOT')}
add_period(1940,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174959639,72),0,Date::ITALY),DateTime.new0(Rational.new!(58828295,24),0,Date::ITALY),46800,0,:'TOT')}
add_period(1998,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58828295,24),0,Date::ITALY),DateTime.new0(Rational.new!(58834993,24),0,Date::ITALY),46800,0,:'TOT')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58834993,24),0,Date::ITALY),DateTime.new0(Rational.new!(58838929,24),0,Date::ITALY),46800,3600,:'TOST')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58838929,24),0,Date::ITALY),DateTime.new0(Rational.new!(58844473,24),0,Date::ITALY),46800,0,:'TOT')}
add_period(2000,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58844473,24),0,Date::ITALY),DateTime.new0(Rational.new!(2451937,1),0,Date::ITALY),46800,3600,:'TOST')}
add_period(2001,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2451937,1),0,Date::ITALY),DateTime.new0(Rational.new!(58853209,24),0,Date::ITALY),46800,0,:'TOT')}
add_period(2001,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58853209,24),0,Date::ITALY),DateTime.new0(Rational.new!(2452301,1),0,Date::ITALY),46800,3600,:'TOST')}
add_period(2002,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2452301,1),0,Date::ITALY),nil,46800,0,:'TOT')}
end
end
end
end
