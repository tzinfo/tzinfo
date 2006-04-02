require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Shanghai < Timezone #:nodoc:
setup
set_identifier('Asia/Shanghai')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(6548164639,2700),0,Date::ITALY),29152,0,:LMT)}
add_period(1927,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(6548164639,2700),0,Date::ITALY),DateTime.new0(Rational.new!(14578699,6),0,Date::ITALY),28800,0,:CST)}
add_period(1940,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(14578699,6),0,Date::ITALY),DateTime.new0(Rational.new!(19439225,8),0,Date::ITALY),28800,3600,:CDT)}
add_period(1940,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19439225,8),0,Date::ITALY),DateTime.new0(Rational.new!(14580415,6),0,Date::ITALY),28800,0,:CST)}
add_period(1941,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14580415,6),0,Date::ITALY),DateTime.new0(Rational.new!(19442145,8),0,Date::ITALY),28800,3600,:CDT)}
add_period(1941,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19442145,8),0,Date::ITALY),515520000,28800,0,:CST)}
add_period(1986,5) {TimezonePeriod.new(515520000,527007600,28800,3600,:CDT)}
add_period(1986,9) {TimezonePeriod.new(527007600,545155200,28800,0,:CST)}
add_period(1987,4) {TimezonePeriod.new(545155200,558457200,28800,3600,:CDT)}
add_period(1987,9) {TimezonePeriod.new(558457200,576604800,28800,0,:CST)}
add_period(1988,4) {TimezonePeriod.new(576604800,589906800,28800,3600,:CDT)}
add_period(1988,9) {TimezonePeriod.new(589906800,608659200,28800,0,:CST)}
add_period(1989,4) {TimezonePeriod.new(608659200,621961200,28800,3600,:CDT)}
add_period(1989,9) {TimezonePeriod.new(621961200,640108800,28800,0,:CST)}
add_period(1990,4) {TimezonePeriod.new(640108800,653410800,28800,3600,:CDT)}
add_period(1990,9) {TimezonePeriod.new(653410800,671558400,28800,0,:CST)}
add_period(1991,4) {TimezonePeriod.new(671558400,684860400,28800,3600,:CDT)}
add_period(1991,9) {TimezonePeriod.new(684860400,nil,28800,0,:CST)}
end
end
end
end
