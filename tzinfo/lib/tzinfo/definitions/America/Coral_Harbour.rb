require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Coral_Harbour < Timezone #:nodoc:
setup
set_identifier('America/Coral_Harbour')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5203821739,2160),0,Date::ITALY),-19960,0,:'LMT')}
add_period(1884,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(5203821739,2160),0,Date::ITALY),DateTime.new0(Rational.new!(58120747,24),0,Date::ITALY),-18000,0,:'ET')}
add_period(1918,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58120747,24),0,Date::ITALY),DateTime.new0(Rational.new!(9687575,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9687575,4),0,Date::ITALY),DateTime.new0(Rational.new!(58130491,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1919,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58130491,24),0,Date::ITALY),DateTime.new0(Rational.new!(7266791,3),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1919,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7266791,3),0,Date::ITALY),DateTime.new0(Rational.new!(58329595,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58329595,24),0,Date::ITALY),DateTime.new0(Rational.new!(9726915,4),0,Date::ITALY),-18000,3600,:'EWT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9726915,4),0,Date::ITALY),DateTime.new0(Rational.new!(58363721,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1946,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58363721,24),0,Date::ITALY),nil,-18000,0,:'EST')}
end
end
end
end
