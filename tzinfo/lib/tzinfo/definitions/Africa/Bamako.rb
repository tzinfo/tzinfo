require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bamako < Timezone #:nodoc:
setup
set_identifier('Africa/Bamako')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(217746227,90),0,Date::ITALY),-1920,0,:LMT)}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(217746227,90),0,Date::ITALY),DateTime.new0(Rational.new!(4854989,2),0,Date::ITALY),0,0,:GMT)}
add_period(1934,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4854989,2),0,Date::ITALY),DateTime.new0(Rational.new!(58490533,24),0,Date::ITALY),-3600,0,:WAT)}
add_period(1960,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58490533,24),0,Date::ITALY),nil,0,0,:GMT)}
end
end
end
end
