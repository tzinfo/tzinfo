require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Maldives < Timezone #:nodoc:
setup
set_identifier('Indian/Maldives')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(577851671,240),0,Date::ITALY),17640,0,:'LMT')}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(577851671,240),0,Date::ITALY),DateTime.new0(Rational.new!(584864231,240),0,Date::ITALY),17640,0,:'MMT')}
add_period(1959,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(584864231,240),0,Date::ITALY),nil,18000,0,:'MVT')}
end
end
end
end
