require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class South_Georgia < Timezone #:nodoc:
setup
set_identifier('Atlantic/South_Georgia')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1627673806,675),0,Date::ITALY),-8768,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1627673806,675),0,Date::ITALY),nil,-7200,0,:'GST')}
end
end
end
end
