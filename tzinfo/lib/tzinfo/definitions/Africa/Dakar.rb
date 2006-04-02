require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Dakar < Timezone #:nodoc:
setup
set_identifier('Africa/Dakar')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26129547523,10800),0,Date::ITALY),-4184,0,:LMT)}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26129547523,10800),0,Date::ITALY),DateTime.new0(Rational.new!(58323517,24),0,Date::ITALY),-3600,0,:WAT)}
add_period(1941,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58323517,24),0,Date::ITALY),nil,0,0,:GMT)}
end
end
end
end
