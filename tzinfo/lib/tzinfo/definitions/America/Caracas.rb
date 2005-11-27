require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Caracas < Timezone #:nodoc:
setup
set_identifier('America/Caracas')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1627673863,675),0,Date::ITALY),-16064,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1627673863,675),0,Date::ITALY),DateTime.new0(Rational.new!(10452001043,4320),0,Date::ITALY),-16060,0,:'CMT')}
add_period(1912,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(10452001043,4320),0,Date::ITALY),DateTime.new0(Rational.new!(39020187,16),0,Date::ITALY),-16200,0,:'VET')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39020187,16),0,Date::ITALY),nil,-14400,0,:'VET')}
end
end
end
end
