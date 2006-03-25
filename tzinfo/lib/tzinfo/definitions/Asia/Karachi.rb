require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Karachi < Timezone #:nodoc:
setup
set_identifier('Asia/Karachi')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1934061051,800),0,Date::ITALY),16092,0,:'LMT')}
add_period(1906,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1934061051,800),0,Date::ITALY),DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),19800,0,:'IST')}
add_period(1942,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(116668957,48),0,Date::ITALY),DateTime.new0(Rational.new!(116723675,48),0,Date::ITALY),19800,3600,:'IST')}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116723675,48),0,Date::ITALY),DateTime.new0(Rational.new!(116828125,48),0,Date::ITALY),19800,0,:'IST')}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(116828125,48),0,Date::ITALY),38775600,18000,0,:'KART')}
add_period(1971,3) {TimezonePeriod.new(38775600,1018119660,18000,0,:'PKT')}
add_period(2002,4) {TimezonePeriod.new(1018119660,1033840860,18000,3600,:'PKST')}
add_period(2002,10) {TimezonePeriod.new(1033840860,nil,18000,0,:'PKT')}
end
end
end
end
