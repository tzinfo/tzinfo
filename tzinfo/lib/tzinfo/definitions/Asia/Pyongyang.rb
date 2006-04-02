require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Pyongyang < Timezone #:nodoc:
setup
set_identifier('Asia/Pyongyang')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3472370137,1440),0,Date::ITALY),30180,0,:LMT)}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3472370137,1440),0,Date::ITALY),DateTime.new0(Rational.new!(116007127,48),0,Date::ITALY),30600,0,:KST)}
add_period(1904,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(116007127,48),0,Date::ITALY),DateTime.new0(Rational.new!(19401969,8),0,Date::ITALY),32400,0,:KST)}
add_period(1927,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19401969,8),0,Date::ITALY),DateTime.new0(Rational.new!(116481943,48),0,Date::ITALY),30600,0,:KST)}
add_period(1931,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116481943,48),0,Date::ITALY),DateTime.new0(Rational.new!(19478577,8),0,Date::ITALY),32400,0,:KST)}
add_period(1954,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19478577,8),0,Date::ITALY),DateTime.new0(Rational.new!(14625127,6),0,Date::ITALY),28800,0,:KST)}
add_period(1961,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(14625127,6),0,Date::ITALY),nil,32400,0,:KST)}
end
end
end
end
