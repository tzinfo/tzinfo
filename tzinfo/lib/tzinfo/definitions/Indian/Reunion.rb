require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Reunion < Timezone #:nodoc:
setup
set_identifier('Indian/Reunion')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3265904267,1350),0,Date::ITALY),13312,0,:'LMT')}
add_period(1911,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(3265904267,1350),0,Date::ITALY),nil,14400,0,:'RET')}
end
end
end
end
