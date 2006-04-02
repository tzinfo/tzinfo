require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Mogadishu < Timezone #:nodoc:
setup
set_identifier('Africa/Mogadishu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26057898439,10800),0,Date::ITALY),10888,0,:LMT)}
add_period(1893,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(26057898439,10800),0,Date::ITALY),DateTime.new0(Rational.new!(19410739,8),0,Date::ITALY),10800,0,:EAT)}
add_period(1930,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19410739,8),0,Date::ITALY),DateTime.new0(Rational.new!(116920291,48),0,Date::ITALY),9000,0,:BEAT)}
add_period(1956,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116920291,48),0,Date::ITALY),nil,10800,0,:EAT)}
end
end
end
end
