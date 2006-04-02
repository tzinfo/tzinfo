require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Mauritius < Timezone #:nodoc:
setup
set_identifier('Indian/Mauritius')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(348130993,144),0,Date::ITALY),13800,0,:LMT)}
add_period(1906,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(348130993,144),0,Date::ITALY),nil,14400,0,:MUT)}
end
end
end
end
