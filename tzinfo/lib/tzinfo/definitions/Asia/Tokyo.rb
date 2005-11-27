require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tokyo < Timezone #:nodoc:
setup
set_identifier('Asia/Tokyo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(19285097,8),0,Date::ITALY),33539,0,:'LMT')}
add_period(1887,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19285097,8),0,Date::ITALY),DateTime.new0(Rational.new!(19308473,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1895,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19308473,8),0,Date::ITALY),DateTime.new0(Rational.new!(19431193,8),0,Date::ITALY),32400,0,:'CJT')}
add_period(1937,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19431193,8),0,Date::ITALY),DateTime.new0(Rational.new!(58384157,24),0,Date::ITALY),32400,0,:'JT')}
add_period(1948,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58384157,24),0,Date::ITALY),DateTime.new0(Rational.new!(14596831,6),0,Date::ITALY),32400,3600,:'JDT')}
add_period(1948,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14596831,6),0,Date::ITALY),DateTime.new0(Rational.new!(58392221,24),0,Date::ITALY),32400,0,:'JST')}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58392221,24),0,Date::ITALY),DateTime.new0(Rational.new!(14599015,6),0,Date::ITALY),32400,3600,:'JDT')}
add_period(1949,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14599015,6),0,Date::ITALY),DateTime.new0(Rational.new!(58401797,24),0,Date::ITALY),32400,0,:'JST')}
add_period(1950,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58401797,24),0,Date::ITALY),DateTime.new0(Rational.new!(14601199,6),0,Date::ITALY),32400,3600,:'JDT')}
add_period(1950,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14601199,6),0,Date::ITALY),DateTime.new0(Rational.new!(58410533,24),0,Date::ITALY),32400,0,:'JST')}
add_period(1951,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58410533,24),0,Date::ITALY),DateTime.new0(Rational.new!(14603383,6),0,Date::ITALY),32400,3600,:'JDT')}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14603383,6),0,Date::ITALY),nil,32400,0,:'JST')}
end
end
end
end
