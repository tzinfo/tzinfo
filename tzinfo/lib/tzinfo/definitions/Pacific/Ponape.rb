require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Ponape < Timezone #:nodoc:
setup
set_identifier('Pacific/Ponape')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172317307,21600),0,Date::ITALY),37972,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172317307,21600),0,Date::ITALY),nil,39600,0,:'PONT')}
end
end
end
end
