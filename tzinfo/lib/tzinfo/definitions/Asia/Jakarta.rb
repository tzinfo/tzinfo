require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Jakarta < Timezone #:nodoc:
setup
set_identifier('Asia/Jakarta')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(720956461,300),0,Date::ITALY),25632,0,:'LMT')}
add_period(1867,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(720956461,300),0,Date::ITALY),DateTime.new0(Rational.new!(87256267,36),0,Date::ITALY),25632,0,:'JMT')}
add_period(1923,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(87256267,36),0,Date::ITALY),DateTime.new0(Rational.new!(87372439,36),0,Date::ITALY),26400,0,:'JAVT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(87372439,36),0,Date::ITALY),DateTime.new0(Rational.new!(38887059,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(38887059,16),0,Date::ITALY),DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1945,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),DateTime.new0(Rational.new!(38922755,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(38922755,16),0,Date::ITALY),DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),28800,0,:'WIT')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),DateTime.new0(Rational.new!(39014323,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(39014323,16),0,Date::ITALY),nil,25200,0,:'WIT')}
end
end
end
end
