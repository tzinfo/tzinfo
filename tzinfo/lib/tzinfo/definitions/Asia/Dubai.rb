require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dubai < Timezone #:nodoc:
setup
set_identifier('Asia/Dubai')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(8720367647,3600),0,Date::ITALY),13272,0,:LMT)}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(8720367647,3600),0,Date::ITALY),nil,14400,0,:GST)}
end
end
end
end
