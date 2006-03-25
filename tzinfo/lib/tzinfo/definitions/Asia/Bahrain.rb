require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bahrain < Timezone #:nodoc:
setup
set_identifier('Asia/Bahrain')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10464441233,4320),0,Date::ITALY),12140,0,:'LMT')}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10464441233,4320),0,Date::ITALY),76190400,14400,0,:'GST')}
add_period(1972,5) {TimezonePeriod.new(76190400,nil,10800,0,:'AST')}
end
end
end
end
