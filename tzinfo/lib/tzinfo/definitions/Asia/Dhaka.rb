require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dhaka < Timezone #:nodoc:
setup
set_identifier('Asia/Dhaka')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2083422167,864),0,Date::ITALY),21700,0,:'LMT')}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(2083422167,864),0,Date::ITALY),DateTime.new0(Rational.new!(524937943,216),0,Date::ITALY),21200,0,:'HMT')}
add_period(1941,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(524937943,216),0,Date::ITALY),DateTime.new0(Rational.new!(116663723,48),0,Date::ITALY),23400,0,:'BURT')}
add_period(1942,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(116663723,48),0,Date::ITALY),DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),19800,0,:'IST')}
add_period(1942,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),DateTime.new0(Rational.new!(116828123,48),0,Date::ITALY),23400,0,:'BURT')}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(116828123,48),0,Date::ITALY),38772000,21600,0,:'DACT')}
add_period(1971,3) {TimezonePeriod.new(38772000,nil,21600,0,:'BDT')}
end
end
end
end
