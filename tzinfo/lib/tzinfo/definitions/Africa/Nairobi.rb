require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Nairobi < Timezone #:nodoc:
setup
set_identifier('Africa/Nairobi')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52389253391,21600),0,Date::ITALY),8836,0,:'LMT')}
add_period(1928,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(52389253391,21600),0,Date::ITALY),DateTime.new0(Rational.new!(19407819,8),0,Date::ITALY),10800,0,:'EAT')}
add_period(1929,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19407819,8),0,Date::ITALY),DateTime.new0(Rational.new!(116622211,48),0,Date::ITALY),9000,0,:'BEAT')}
add_period(1939,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116622211,48),0,Date::ITALY),DateTime.new0(Rational.new!(14036742061,5760),0,Date::ITALY),9885,0,:'BEAUT')}
add_period(1959,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14036742061,5760),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
