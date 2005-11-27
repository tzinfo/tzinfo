require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Australia #:nodoc:
class Darwin < Timezone #:nodoc:
setup
set_identifier('Australia/Darwin')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1042513259,432),0,Date::ITALY),31400,0,:'LMT')}
add_period(1895,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1042513259,432),0,Date::ITALY),DateTime.new0(Rational.new!(19318201,8),0,Date::ITALY),32400,0,:'CST')}
add_period(1899,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19318201,8),0,Date::ITALY),DateTime.new0(Rational.new!(3486569911,1440),0,Date::ITALY),34200,0,:'CST')}
add_period(1916,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3486569911,1440),0,Date::ITALY),DateTime.new0(Rational.new!(116222983,48),0,Date::ITALY),34200,3600,:'CST')}
add_period(1917,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(116222983,48),0,Date::ITALY),DateTime.new0(Rational.new!(38885763,16),0,Date::ITALY),34200,0,:'CST')}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(38885763,16),0,Date::ITALY),DateTime.new0(Rational.new!(116661463,48),0,Date::ITALY),34200,3600,:'CST')}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(116661463,48),0,Date::ITALY),DateTime.new0(Rational.new!(38890067,16),0,Date::ITALY),34200,0,:'CST')}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(38890067,16),0,Date::ITALY),DateTime.new0(Rational.new!(116678935,48),0,Date::ITALY),34200,3600,:'CST')}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(116678935,48),0,Date::ITALY),DateTime.new0(Rational.new!(38896003,16),0,Date::ITALY),34200,0,:'CST')}
add_period(1943,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(38896003,16),0,Date::ITALY),DateTime.new0(Rational.new!(116696407,48),0,Date::ITALY),34200,3600,:'CST')}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(116696407,48),0,Date::ITALY),nil,34200,0,:'CST')}
end
end
end
end
