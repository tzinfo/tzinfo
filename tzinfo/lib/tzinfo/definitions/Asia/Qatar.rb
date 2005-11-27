require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Qatar < Timezone #:nodoc:
setup
set_identifier('Asia/Qatar')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13080551527,5400),0,Date::ITALY),12368,0,:'LMT')}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(13080551527,5400),0,Date::ITALY),DateTime.new0(Rational.new!(7324408,3),0,Date::ITALY),14400,0,:'GST')}
add_period(1972,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(7324408,3),0,Date::ITALY),nil,10800,0,:'AST')}
end
end
end
end
