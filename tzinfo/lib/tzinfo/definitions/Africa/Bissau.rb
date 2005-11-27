require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bissau < Timezone #:nodoc:
setup
set_identifier('Africa/Bissau')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10450868587,4320),0,Date::ITALY),-3740,0,:'LMT')}
add_period(1911,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(10450868587,4320),0,Date::ITALY),DateTime.new0(Rational.new!(58617925,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1975,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58617925,24),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
