require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Puerto_Rico < Timezone #:nodoc:
setup
set_identifier('America/Puerto_Rico')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(41726744933,17280),0,Date::ITALY),-15865,0,:LMT)}
add_period(1899,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(41726744933,17280),0,Date::ITALY),DateTime.new0(Rational.new!(7291448,3),0,Date::ITALY),-14400,0,:AST)}
add_period(1942,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(7291448,3),0,Date::ITALY),DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),-14400,3600,:AWT)}
add_period(1945,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),DateTime.new0(Rational.new!(58361489,24),0,Date::ITALY),-14400,3600,:APT)}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58361489,24),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
