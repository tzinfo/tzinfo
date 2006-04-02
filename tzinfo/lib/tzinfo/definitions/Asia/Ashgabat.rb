require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ashgabat < Timezone #:nodoc:
setup
set_identifier('Asia/Ashgabat')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52356398497,21600),0,Date::ITALY),14012,0,:LMT)}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52356398497,21600),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:ASHT)}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),354913200,18000,0,:ASHT)}
add_period(1981,3) {TimezonePeriod.new(354913200,370720800,18000,3600,:ASHST)}
add_period(1981,9) {TimezonePeriod.new(370720800,386449200,18000,0,:ASHT)}
add_period(1982,3) {TimezonePeriod.new(386449200,402256800,18000,3600,:ASHST)}
add_period(1982,9) {TimezonePeriod.new(402256800,417985200,18000,0,:ASHT)}
add_period(1983,3) {TimezonePeriod.new(417985200,433792800,18000,3600,:ASHST)}
add_period(1983,9) {TimezonePeriod.new(433792800,449607600,18000,0,:ASHT)}
add_period(1984,3) {TimezonePeriod.new(449607600,465339600,18000,3600,:ASHST)}
add_period(1984,9) {TimezonePeriod.new(465339600,481064400,18000,0,:ASHT)}
add_period(1985,3) {TimezonePeriod.new(481064400,496789200,18000,3600,:ASHST)}
add_period(1985,9) {TimezonePeriod.new(496789200,512514000,18000,0,:ASHT)}
add_period(1986,3) {TimezonePeriod.new(512514000,528238800,18000,3600,:ASHST)}
add_period(1986,9) {TimezonePeriod.new(528238800,543963600,18000,0,:ASHT)}
add_period(1987,3) {TimezonePeriod.new(543963600,559688400,18000,3600,:ASHST)}
add_period(1987,9) {TimezonePeriod.new(559688400,575413200,18000,0,:ASHT)}
add_period(1988,3) {TimezonePeriod.new(575413200,591138000,18000,3600,:ASHST)}
add_period(1988,9) {TimezonePeriod.new(591138000,606862800,18000,0,:ASHT)}
add_period(1989,3) {TimezonePeriod.new(606862800,622587600,18000,3600,:ASHST)}
add_period(1989,9) {TimezonePeriod.new(622587600,638312400,18000,0,:ASHT)}
add_period(1990,3) {TimezonePeriod.new(638312400,654642000,18000,3600,:ASHST)}
add_period(1990,9) {TimezonePeriod.new(654642000,670366800,18000,0,:ASHT)}
add_period(1991,3) {TimezonePeriod.new(670366800,686095200,14400,3600,:ASHST)}
add_period(1991,9) {TimezonePeriod.new(686095200,688507200,14400,0,:ASHT)}
add_period(1991,10) {TimezonePeriod.new(688507200,695772000,14400,0,:TMT)}
add_period(1992,1) {TimezonePeriod.new(695772000,nil,18000,0,:TMT)}
end
end
end
end
