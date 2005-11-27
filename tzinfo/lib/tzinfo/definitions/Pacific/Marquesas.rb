require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Marquesas < Timezone #:nodoc:
setup
set_identifier('Pacific/Marquesas')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(193574151,80),0,Date::ITALY),-33480,0,:'LMT')}
add_period(1912,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(193574151,80),0,Date::ITALY),nil,-34200,0,:'MART')}
end
end
end
end
