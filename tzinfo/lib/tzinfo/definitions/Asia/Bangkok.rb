require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bangkok < Timezone #:nodoc:
setup
set_identifier('Asia/Bangkok')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52006648769,21600),0,Date::ITALY),24124,0,:'LMT')}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52006648769,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52324168769,21600),0,Date::ITALY),24124,0,:'BMT')}
add_period(1920,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(52324168769,21600),0,Date::ITALY),nil,25200,0,:'ICT')}
end
end
end
end
