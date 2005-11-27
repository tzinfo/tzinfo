require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Dar_es_Salaam < Timezone #:nodoc:
setup
set_identifier('Africa/Dar_es_Salaam')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52408995643,21600),0,Date::ITALY),9428,0,:'LMT')}
add_period(1930,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52408995643,21600),0,Date::ITALY),DateTime.new0(Rational.new!(19460411,8),0,Date::ITALY),10800,0,:'EAT')}
add_period(1947,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19460411,8),0,Date::ITALY),DateTime.new0(Rational.new!(14038850221,5760),0,Date::ITALY),9885,0,:'BEAUT')}
add_period(1960,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14038850221,5760),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
