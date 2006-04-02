require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Apia < Timezone #:nodoc:
setup
set_identifier('Pacific/Apia')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3250172219,1350),0,Date::ITALY),45184,0,:LMT)}
add_period(1879,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(3250172219,1350),0,Date::ITALY),DateTime.new0(Rational.new!(3265701269,1350),0,Date::ITALY),-41216,0,:LMT)}
add_period(1911,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(3265701269,1350),0,Date::ITALY),DateTime.new0(Rational.new!(116797583,48),0,Date::ITALY),-41400,0,:SAMT)}
add_period(1950,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(116797583,48),0,Date::ITALY),nil,-39600,0,:WST)}
end
end
end
end
