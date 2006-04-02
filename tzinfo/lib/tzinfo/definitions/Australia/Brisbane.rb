require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Brisbane < Timezone #:nodoc:
setup
set_identifier('Australia/Brisbane')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26062496009,10800),0,Date::ITALY),36728,0,:LMT)}
add_period(1894,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26062496009,10800),0,Date::ITALY),DateTime.new0(Rational.new!(3486569881,1440),0,Date::ITALY),36000,0,:EST)}
add_period(1916,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3486569881,1440),0,Date::ITALY),DateTime.new0(Rational.new!(19370497,8),0,Date::ITALY),36000,3600,:EST)}
add_period(1917,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19370497,8),0,Date::ITALY),DateTime.new0(Rational.new!(14582161,6),0,Date::ITALY),36000,0,:EST)}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14582161,6),0,Date::ITALY),DateTime.new0(Rational.new!(19443577,8),0,Date::ITALY),36000,3600,:EST)}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19443577,8),0,Date::ITALY),DateTime.new0(Rational.new!(14583775,6),0,Date::ITALY),36000,0,:EST)}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14583775,6),0,Date::ITALY),DateTime.new0(Rational.new!(19446489,8),0,Date::ITALY),36000,3600,:EST)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19446489,8),0,Date::ITALY),DateTime.new0(Rational.new!(14586001,6),0,Date::ITALY),36000,0,:EST)}
add_period(1943,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14586001,6),0,Date::ITALY),DateTime.new0(Rational.new!(19449401,8),0,Date::ITALY),36000,3600,:EST)}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19449401,8),0,Date::ITALY),57686400,36000,0,:EST)}
add_period(1971,10) {TimezonePeriod.new(57686400,67968000,36000,3600,:EST)}
add_period(1972,2) {TimezonePeriod.new(67968000,625593600,36000,0,:EST)}
add_period(1989,10) {TimezonePeriod.new(625593600,636480000,36000,3600,:EST)}
add_period(1990,3) {TimezonePeriod.new(636480000,657043200,36000,0,:EST)}
add_period(1990,10) {TimezonePeriod.new(657043200,667929600,36000,3600,:EST)}
add_period(1991,3) {TimezonePeriod.new(667929600,688492800,36000,0,:EST)}
add_period(1991,10) {TimezonePeriod.new(688492800,699379200,36000,3600,:EST)}
add_period(1992,2) {TimezonePeriod.new(699379200,nil,36000,0,:EST)}
end
end
end
end
