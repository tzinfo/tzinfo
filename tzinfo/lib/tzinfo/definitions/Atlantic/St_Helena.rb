require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class St_Helena < Timezone #:nodoc:
setup
set_identifier('Atlantic/St_Helena')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2893642219,1200),0,Date::ITALY),-1368,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2893642219,1200),0,Date::ITALY),DateTime.new0(Rational.new!(2920377019,1200),0,Date::ITALY),-1368,0,:'JMT')}
add_period(1951,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2920377019,1200),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
