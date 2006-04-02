require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Lucia < Timezone #:nodoc:
setup
set_identifier('America/St_Lucia')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(868092721,360),0,Date::ITALY),-14640,0,:LMT)}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(868092721,360),0,Date::ITALY),DateTime.new0(Rational.new!(870984961,360),0,Date::ITALY),-14640,0,:CMT)}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(870984961,360),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
