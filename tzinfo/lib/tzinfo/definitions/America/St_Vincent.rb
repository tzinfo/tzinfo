require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Vincent < Timezone #:nodoc:
setup
set_identifier('America/St_Vincent')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26042781637,10800),0,Date::ITALY),-14696,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26042781637,10800),0,Date::ITALY),DateTime.new0(Rational.new!(26129548837,10800),0,Date::ITALY),-14696,0,:'KMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26129548837,10800),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
