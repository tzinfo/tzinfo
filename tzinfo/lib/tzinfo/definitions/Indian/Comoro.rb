require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Comoro < Timezone #:nodoc:
setup
set_identifier('Indian/Comoro')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13063779251,5400),0,Date::ITALY),10384,0,:'LMT')}
add_period(1911,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(13063779251,5400),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
