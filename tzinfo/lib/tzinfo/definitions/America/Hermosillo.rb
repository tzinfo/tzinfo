require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Hermosillo < Timezone #:nodoc:
setup
set_identifier('America/Hermosillo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(58153339,24),0,Date::ITALY),-26632,0,:'LMT')}
add_period(1922,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58153339,24),0,Date::ITALY),DateTime.new0(Rational.new!(9700171,4),0,Date::ITALY),-25200,0,:'MST')}
add_period(1927,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(9700171,4),0,Date::ITALY),DateTime.new0(Rational.new!(9705183,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1930,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9705183,4),0,Date::ITALY),DateTime.new0(Rational.new!(9705855,4),0,Date::ITALY),-25200,0,:'MST')}
add_period(1931,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(9705855,4),0,Date::ITALY),DateTime.new0(Rational.new!(9706463,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9706463,4),0,Date::ITALY),DateTime.new0(Rational.new!(58243171,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1932,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58243171,24),0,Date::ITALY),DateTime.new0(Rational.new!(9721895,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1942,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(9721895,4),0,Date::ITALY),DateTime.new0(Rational.new!(58390339,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1949,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58390339,24),0,Date::ITALY),28800,-28800,0,:'PST')}
add_period(1970,1) {TimezonePeriod.new(28800,828867600,-25200,0,:'MT')}
add_period(1996,4) {TimezonePeriod.new(828867600,846403200,-25200,3600,:'MDT')}
add_period(1996,10) {TimezonePeriod.new(846403200,860317200,-25200,0,:'MST')}
add_period(1997,4) {TimezonePeriod.new(860317200,877852800,-25200,3600,:'MDT')}
add_period(1997,10) {TimezonePeriod.new(877852800,891766800,-25200,0,:'MST')}
add_period(1998,4) {TimezonePeriod.new(891766800,909302400,-25200,3600,:'MDT')}
add_period(1998,10) {TimezonePeriod.new(909302400,915174000,-25200,0,:'MST')}
add_period(1999,1) {TimezonePeriod.new(915174000,nil,-25200,0,:'MST')}
end
end
end
end
