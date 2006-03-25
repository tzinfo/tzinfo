require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Manila < Timezone #:nodoc:
setup
set_identifier('Asia/Manila')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(862175579,360),0,Date::ITALY),-57360,0,:'LMT')}
add_period(1844,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(862175579,360),0,Date::ITALY),DateTime.new0(Rational.new!(869322659,360),0,Date::ITALY),29040,0,:'LMT')}
add_period(1899,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(869322659,360),0,Date::ITALY),DateTime.new0(Rational.new!(14570839,6),0,Date::ITALY),28800,0,:'PHT')}
add_period(1936,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14570839,6),0,Date::ITALY),DateTime.new0(Rational.new!(19428521,8),0,Date::ITALY),28800,3600,:'PHST')}
add_period(1937,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19428521,8),0,Date::ITALY),DateTime.new0(Rational.new!(14582881,6),0,Date::ITALY),28800,0,:'PHT')}
add_period(1942,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14582881,6),0,Date::ITALY),DateTime.new0(Rational.new!(19451161,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1944,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19451161,8),0,Date::ITALY),DateTime.new0(Rational.new!(14609065,6),0,Date::ITALY),28800,0,:'PHT')}
add_period(1954,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14609065,6),0,Date::ITALY),DateTime.new0(Rational.new!(19479393,8),0,Date::ITALY),28800,3600,:'PHST')}
add_period(1954,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(19479393,8),0,Date::ITALY),259344000,28800,0,:'PHT')}
add_period(1978,3) {TimezonePeriod.new(259344000,275151600,28800,3600,:'PHST')}
add_period(1978,9) {TimezonePeriod.new(275151600,nil,28800,0,:'PHT')}
end
end
end
end
