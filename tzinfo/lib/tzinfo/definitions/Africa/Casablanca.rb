require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Casablanca < Timezone #:nodoc:
setup
set_identifier('Africa/Casablanca')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10454687371,4320),0,Date::ITALY),-1820,0,:'LMT')}
add_period(1913,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(10454687371,4320),0,Date::ITALY),DateTime.new0(Rational.new!(4859037,2),0,Date::ITALY),0,0,:'WET')}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4859037,2),0,Date::ITALY),DateTime.new0(Rational.new!(58310075,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1939,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58310075,24),0,Date::ITALY),DateTime.new0(Rational.new!(4859369,2),0,Date::ITALY),0,0,:'WET')}
add_period(1940,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4859369,2),0,Date::ITALY),DateTime.new0(Rational.new!(58362659,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1945,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58362659,24),0,Date::ITALY),DateTime.new0(Rational.new!(4866887,2),0,Date::ITALY),0,0,:'WET')}
add_period(1950,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4866887,2),0,Date::ITALY),DateTime.new0(Rational.new!(58406003,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1950,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58406003,24),0,Date::ITALY),DateTime.new0(Rational.new!(2439645,1),0,Date::ITALY),0,0,:'WET')}
add_period(1967,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(2439645,1),0,Date::ITALY),DateTime.new0(Rational.new!(58554347,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1967,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58554347,24),0,Date::ITALY),141264000,0,0,:'WET')}
add_period(1974,6) {TimezonePeriod.new(141264000,147222000,0,3600,:'WEST')}
add_period(1974,8) {TimezonePeriod.new(147222000,199756800,0,0,:'WET')}
add_period(1976,5) {TimezonePeriod.new(199756800,207702000,0,3600,:'WEST')}
add_period(1976,7) {TimezonePeriod.new(207702000,231292800,0,0,:'WET')}
add_period(1977,5) {TimezonePeriod.new(231292800,244249200,0,3600,:'WEST')}
add_period(1977,9) {TimezonePeriod.new(244249200,265507200,0,0,:'WET')}
add_period(1978,6) {TimezonePeriod.new(265507200,271033200,0,3600,:'WEST')}
add_period(1978,8) {TimezonePeriod.new(271033200,448243200,0,0,:'WET')}
add_period(1984,3) {TimezonePeriod.new(448243200,504918000,3600,0,:'CET')}
add_period(1985,12) {TimezonePeriod.new(504918000,nil,0,0,:'WET')}
end
end
end
end
