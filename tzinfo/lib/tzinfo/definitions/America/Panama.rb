require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Panama < Timezone #:nodoc:
setup
set_identifier('America/Panama')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13021391093,5400),0,Date::ITALY),-19088,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(13021391093,5400),0,Date::ITALY),DateTime.new0(Rational.new!(8704993399,3600),0,Date::ITALY),-19176,0,:'CMT')}
add_period(1908,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(8704993399,3600),0,Date::ITALY),nil,-18000,0,:'EST')}
end
end
end
end
