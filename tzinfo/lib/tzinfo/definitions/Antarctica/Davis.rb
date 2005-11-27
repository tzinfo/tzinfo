require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Davis < Timezone #:nodoc:
setup
set_identifier('Antarctica/Davis')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4871703,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1957,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4871703,2),0,Date::ITALY),DateTime.new0(Rational.new!(58528805,24),0,Date::ITALY),25200,0,:'DAVT')}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58528805,24),0,Date::ITALY),DateTime.new0(Rational.new!(4880507,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1969,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4880507,2),0,Date::ITALY),nil,25200,0,:'DAVT')}
end
end
end
end
