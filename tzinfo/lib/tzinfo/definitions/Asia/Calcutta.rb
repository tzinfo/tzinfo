require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Calcutta < Timezone #:nodoc:
setup
set_identifier('Asia/Calcutta')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26003324749,10800),0,Date::ITALY),21208,0,:LMT)}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26003324749,10800),0,Date::ITALY),DateTime.new0(Rational.new!(524937943,216),0,Date::ITALY),21200,0,:HMT)}
add_period(1941,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(524937943,216),0,Date::ITALY),DateTime.new0(Rational.new!(116663723,48),0,Date::ITALY),23400,0,:BURT)}
add_period(1942,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(116663723,48),0,Date::ITALY),DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),19800,0,:IST)}
add_period(1942,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),DateTime.new0(Rational.new!(116723675,48),0,Date::ITALY),19800,3600,:IST)}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116723675,48),0,Date::ITALY),nil,19800,0,:IST)}
end
end
end
end
