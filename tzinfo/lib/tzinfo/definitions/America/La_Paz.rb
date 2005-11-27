require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class La_Paz < Timezone #:nodoc:
setup
set_identifier('America/La_Paz')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17361854563,7200),0,Date::ITALY),-16356,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17361854563,7200),0,Date::ITALY),DateTime.new0(Rational.new!(17471733763,7200),0,Date::ITALY),-16356,0,:'CMT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(17471733763,7200),0,Date::ITALY),DateTime.new0(Rational.new!(17472871063,7200),0,Date::ITALY),-16356,3600,:'BOST')}
add_period(1932,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(17472871063,7200),0,Date::ITALY),nil,-14400,0,:'BOT')}
end
end
end
end
