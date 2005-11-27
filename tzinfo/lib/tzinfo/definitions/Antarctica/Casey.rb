require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Casey < Timezone #:nodoc:
setup
set_identifier('Antarctica/Casey')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4880445,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1969,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4880445,2),0,Date::ITALY),nil,28800,0,:'WST')}
end
end
end
end
