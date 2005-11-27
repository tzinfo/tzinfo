require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Cayenne < Timezone #:nodoc:
setup
set_identifier('America/Cayenne')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2612756137,1080),0,Date::ITALY),-12560,0,:'LMT')}
add_period(1911,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(2612756137,1080),0,Date::ITALY),DateTime.new0(Rational.new!(7319294,3),0,Date::ITALY),-14400,0,:'GFT')}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7319294,3),0,Date::ITALY),nil,-10800,0,:'GFT')}
end
end
end
end
