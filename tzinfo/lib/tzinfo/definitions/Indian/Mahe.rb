require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Mahe < Timezone #:nodoc:
setup
set_identifier('Indian/Mahe')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17405008891,7200),0,Date::ITALY),13308,0,:'LMT')}
add_period(1906,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(17405008891,7200),0,Date::ITALY),nil,14400,0,:'SCT')}
end
end
end
end
