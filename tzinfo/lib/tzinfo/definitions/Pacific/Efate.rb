require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Efate < Timezone #:nodoc:
setup
set_identifier('Pacific/Efate')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259343101,21600),0,Date::ITALY),40396,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259343101,21600),0,Date::ITALY),433256400,39600,0,:'VUT')}
add_period(1983,9) {TimezonePeriod.new(433256400,448977600,39600,3600,:'VUST')}
add_period(1984,3) {TimezonePeriod.new(448977600,467298000,39600,0,:'VUT')}
add_period(1984,10) {TimezonePeriod.new(467298000,480427200,39600,3600,:'VUST')}
add_period(1985,3) {TimezonePeriod.new(480427200,496760400,39600,0,:'VUT')}
add_period(1985,9) {TimezonePeriod.new(496760400,511876800,39600,3600,:'VUST')}
add_period(1986,3) {TimezonePeriod.new(511876800,528210000,39600,0,:'VUT')}
add_period(1986,9) {TimezonePeriod.new(528210000,543931200,39600,3600,:'VUST')}
add_period(1987,3) {TimezonePeriod.new(543931200,559659600,39600,0,:'VUT')}
add_period(1987,9) {TimezonePeriod.new(559659600,575380800,39600,3600,:'VUST')}
add_period(1988,3) {TimezonePeriod.new(575380800,591109200,39600,0,:'VUT')}
add_period(1988,9) {TimezonePeriod.new(591109200,606830400,39600,3600,:'VUST')}
add_period(1989,3) {TimezonePeriod.new(606830400,622558800,39600,0,:'VUT')}
add_period(1989,9) {TimezonePeriod.new(622558800,638280000,39600,3600,:'VUST')}
add_period(1990,3) {TimezonePeriod.new(638280000,654008400,39600,0,:'VUT')}
add_period(1990,9) {TimezonePeriod.new(654008400,669729600,39600,3600,:'VUST')}
add_period(1991,3) {TimezonePeriod.new(669729600,686062800,39600,0,:'VUT')}
add_period(1991,9) {TimezonePeriod.new(686062800,696340800,39600,3600,:'VUST')}
add_period(1992,1) {TimezonePeriod.new(696340800,719931600,39600,0,:'VUT')}
add_period(1992,10) {TimezonePeriod.new(719931600,727790400,39600,3600,:'VUST')}
add_period(1993,1) {TimezonePeriod.new(727790400,nil,39600,0,:'VUT')}
end
end
end
end
