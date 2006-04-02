require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tongatapu < Timezone #:nodoc:
setup
set_identifier('Pacific/Tongatapu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5217231571,2160),0,Date::ITALY),44360,0,:LMT)}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5217231571,2160),0,Date::ITALY),DateTime.new0(Rational.new!(174959639,72),0,Date::ITALY),44400,0,:TOT)}
add_period(1940,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174959639,72),0,Date::ITALY),939214800,46800,0,:TOT)}
add_period(1999,10) {TimezonePeriod.new(939214800,953384400,46800,3600,:TOST)}
add_period(2000,3) {TimezonePeriod.new(953384400,973342800,46800,0,:TOT)}
add_period(2000,11) {TimezonePeriod.new(973342800,980596800,46800,3600,:TOST)}
add_period(2001,1) {TimezonePeriod.new(980596800,1004792400,46800,0,:TOT)}
add_period(2001,11) {TimezonePeriod.new(1004792400,1012046400,46800,3600,:TOST)}
add_period(2002,1) {TimezonePeriod.new(1012046400,nil,46800,0,:TOT)}
end
end
end
end
