require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Vostok < Timezone #:nodoc:
setup
set_identifier('Antarctica/Vostok')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4872377,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1957,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(4872377,2),0,Date::ITALY),nil,21600,0,:'VOST')}
end
end
end
end
