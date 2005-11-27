require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Sao_Tome < Timezone #:nodoc:
setup
set_identifier('Africa/Sao_Tome')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13009552999,5400),0,Date::ITALY),1616,0,:'LMT')}
add_period(1883,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(13009552999,5400),0,Date::ITALY),DateTime.new0(Rational.new!(13064773637,5400),0,Date::ITALY),-2192,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(13064773637,5400),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
