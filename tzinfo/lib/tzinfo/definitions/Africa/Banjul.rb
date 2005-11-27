require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Banjul < Timezone #:nodoc:
setup
set_identifier('Africa/Banjul')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1935522037,800),0,Date::ITALY),-3996,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1935522037,800),0,Date::ITALY),DateTime.new0(Rational.new!(1942242837,800),0,Date::ITALY),-3996,0,:'BMT')}
add_period(1935,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1942242837,800),0,Date::ITALY),DateTime.new0(Rational.new!(58521493,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1964,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58521493,24),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
