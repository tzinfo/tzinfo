require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Niamey < Timezone #:nodoc:
setup
set_identifier('Africa/Niamey')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259093873,21600),0,Date::ITALY),508,0,:'LMT')}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259093873,21600),0,Date::ITALY),DateTime.new0(Rational.new!(58259869,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1934,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58259869,24),0,Date::ITALY),DateTime.new0(Rational.new!(4873869,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1960,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4873869,2),0,Date::ITALY),nil,3600,0,:'WAT')}
end
end
end
end
