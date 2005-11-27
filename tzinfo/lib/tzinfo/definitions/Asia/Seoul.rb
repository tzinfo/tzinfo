require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Seoul < Timezone #:nodoc:
setup
set_identifier('Asia/Seoul')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26042775991,10800),0,Date::ITALY),30472,0,:'LMT')}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26042775991,10800),0,Date::ITALY),DateTime.new0(Rational.new!(116007127,48),0,Date::ITALY),30600,0,:'KST')}
add_period(1904,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(116007127,48),0,Date::ITALY),DateTime.new0(Rational.new!(19401969,8),0,Date::ITALY),32400,0,:'KST')}
add_period(1927,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19401969,8),0,Date::ITALY),DateTime.new0(Rational.new!(116481943,48),0,Date::ITALY),30600,0,:'KST')}
add_period(1931,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116481943,48),0,Date::ITALY),DateTime.new0(Rational.new!(19478577,8),0,Date::ITALY),32400,0,:'KST')}
add_period(1954,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19478577,8),0,Date::ITALY),DateTime.new0(Rational.new!(14622415,6),0,Date::ITALY),28800,0,:'KT')}
add_period(1960,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(14622415,6),0,Date::ITALY),DateTime.new0(Rational.new!(19497521,8),0,Date::ITALY),28800,3600,:'KDT')}
add_period(1960,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19497521,8),0,Date::ITALY),DateTime.new0(Rational.new!(14625127,6),0,Date::ITALY),28800,0,:'KST')}
add_period(1961,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(14625127,6),0,Date::ITALY),DateTime.new0(Rational.new!(117126247,48),0,Date::ITALY),30600,0,:'KST')}
add_period(1968,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(117126247,48),0,Date::ITALY),DateTime.new0(Rational.new!(19575401,8),0,Date::ITALY),32400,0,:'KT')}
add_period(1987,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19575401,8),0,Date::ITALY),DateTime.new0(Rational.new!(29364949,12),0,Date::ITALY),32400,3600,:'KDT')}
add_period(1987,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29364949,12),0,Date::ITALY),DateTime.new0(Rational.new!(19578313,8),0,Date::ITALY),32400,0,:'KST')}
add_period(1988,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19578313,8),0,Date::ITALY),DateTime.new0(Rational.new!(29369317,12),0,Date::ITALY),32400,3600,:'KDT')}
add_period(1988,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29369317,12),0,Date::ITALY),nil,32400,0,:'KST')}
end
end
end
end
