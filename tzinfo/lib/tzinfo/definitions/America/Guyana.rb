require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guyana < Timezone #:nodoc:
setup
set_identifier('America/Guyana')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5228404549,2160),0,Date::ITALY),-13960,0,:'LMT')}
add_period(1915,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(5228404549,2160),0,Date::ITALY),DateTime.new0(Rational.new!(78056693,32),0,Date::ITALY),-13500,0,:'GBGT')}
add_period(1966,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(78056693,32),0,Date::ITALY),176010300,-13500,0,:'GYT')}
add_period(1975,7) {TimezonePeriod.new(176010300,662698800,-10800,0,:'GYT')}
add_period(1991,1) {TimezonePeriod.new(662698800,nil,-14400,0,:'GYT')}
end
end
end
end
