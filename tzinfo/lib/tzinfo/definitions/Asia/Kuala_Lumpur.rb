require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuala_Lumpur < Timezone #:nodoc:
setup
set_identifier('Asia/Kuala_Lumpur')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(104344641397,43200),0,Date::ITALY),24406,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(104344641397,43200),0,Date::ITALY),DateTime.new0(Rational.new!(8353142363,3456),0,Date::ITALY),24925,0,:'SMT')}
add_period(1905,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(8353142363,3456),0,Date::ITALY),DateTime.new0(Rational.new!(58249757,24),0,Date::ITALY),25200,0,:'MALT')}
add_period(1932,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58249757,24),0,Date::ITALY),DateTime.new0(Rational.new!(87414055,36),0,Date::ITALY),25200,1200,:'MALST')}
add_period(1935,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(87414055,36),0,Date::ITALY),DateTime.new0(Rational.new!(87488575,36),0,Date::ITALY),26400,0,:'MALT')}
add_period(1941,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(87488575,36),0,Date::ITALY),DateTime.new0(Rational.new!(38886499,16),0,Date::ITALY),27000,0,:'MALT')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(38886499,16),0,Date::ITALY),DateTime.new0(Rational.new!(19453681,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453681,8),0,Date::ITALY),378664200,27000,0,:'MALT')}
add_period(1981,12) {TimezonePeriod.new(378664200,nil,28800,0,:'MYT')}
end
end
end
end
