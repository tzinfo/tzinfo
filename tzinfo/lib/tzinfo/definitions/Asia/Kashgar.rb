require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kashgar < Timezone #:nodoc:
setup
set_identifier('Asia/Kashgar')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52385319841,21600),0,Date::ITALY),18236,0,:'LMT')}
add_period(1927,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52385319841,21600),0,Date::ITALY),DateTime.new0(Rational.new!(116622205,48),0,Date::ITALY),19800,0,:'KAST')}
add_period(1939,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116622205,48),0,Date::ITALY),DateTime.new0(Rational.new!(58664647,24),0,Date::ITALY),18000,0,:'KAST')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58664647,24),0,Date::ITALY),DateTime.new0(Rational.new!(14679325,6),0,Date::ITALY),28800,0,:'CT')}
add_period(1986,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(14679325,6),0,Date::ITALY),DateTime.new0(Rational.new!(19573497,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573497,8),0,Date::ITALY),DateTime.new0(Rational.new!(14681383,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1987,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14681383,6),0,Date::ITALY),DateTime.new0(Rational.new!(19576409,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576409,8),0,Date::ITALY),DateTime.new0(Rational.new!(14683567,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1988,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14683567,6),0,Date::ITALY),DateTime.new0(Rational.new!(19579321,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579321,8),0,Date::ITALY),DateTime.new0(Rational.new!(14685793,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1989,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14685793,6),0,Date::ITALY),DateTime.new0(Rational.new!(19582289,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19582289,8),0,Date::ITALY),DateTime.new0(Rational.new!(14687977,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1990,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14687977,6),0,Date::ITALY),DateTime.new0(Rational.new!(19585201,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19585201,8),0,Date::ITALY),DateTime.new0(Rational.new!(14690161,6),0,Date::ITALY),28800,0,:'CST')}
add_period(1991,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14690161,6),0,Date::ITALY),DateTime.new0(Rational.new!(19588113,8),0,Date::ITALY),28800,3600,:'CDT')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19588113,8),0,Date::ITALY),nil,28800,0,:'CST')}
end
end
end
end
