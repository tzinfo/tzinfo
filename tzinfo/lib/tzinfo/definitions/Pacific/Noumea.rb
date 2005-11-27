require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Noumea < Timezone #:nodoc:
setup
set_identifier('Pacific/Noumea')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17419781071,7200),0,Date::ITALY),39948,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17419781071,7200),0,Date::ITALY),DateTime.new0(Rational.new!(58643545,24),0,Date::ITALY),39600,0,:'NCT')}
add_period(1977,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58643545,24),0,Date::ITALY),DateTime.new0(Rational.new!(2443566,1),0,Date::ITALY),39600,3600,:'NCST')}
add_period(1978,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(2443566,1),0,Date::ITALY),DateTime.new0(Rational.new!(58652281,24),0,Date::ITALY),39600,0,:'NCT')}
add_period(1978,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58652281,24),0,Date::ITALY),DateTime.new0(Rational.new!(2443931,1),0,Date::ITALY),39600,3600,:'NCST')}
add_period(1979,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(2443931,1),0,Date::ITALY),DateTime.new0(Rational.new!(19603345,8),0,Date::ITALY),39600,0,:'NCT')}
add_period(1996,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(19603345,8),0,Date::ITALY),DateTime.new0(Rational.new!(19604073,8),0,Date::ITALY),39600,3600,:'NCST')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19604073,8),0,Date::ITALY),nil,39600,0,:'NCT')}
end
end
end
end
