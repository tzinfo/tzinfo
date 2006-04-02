require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Rarotonga < Timezone #:nodoc:
setup
set_identifier('Pacific/Rarotonga')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26086168193,10800),0,Date::ITALY),-38344,0,:LMT)}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26086168193,10800),0,Date::ITALY),279714600,-37800,0,:CKT)}
add_period(1978,11) {TimezonePeriod.new(279714600,289387800,-36000,1800,:CKHST)}
add_period(1979,3) {TimezonePeriod.new(289387800,309952800,-36000,0,:CKT)}
add_period(1979,10) {TimezonePeriod.new(309952800,320837400,-36000,1800,:CKHST)}
add_period(1980,3) {TimezonePeriod.new(320837400,341402400,-36000,0,:CKT)}
add_period(1980,10) {TimezonePeriod.new(341402400,352287000,-36000,1800,:CKHST)}
add_period(1981,3) {TimezonePeriod.new(352287000,372852000,-36000,0,:CKT)}
add_period(1981,10) {TimezonePeriod.new(372852000,384341400,-36000,1800,:CKHST)}
add_period(1982,3) {TimezonePeriod.new(384341400,404906400,-36000,0,:CKT)}
add_period(1982,10) {TimezonePeriod.new(404906400,415791000,-36000,1800,:CKHST)}
add_period(1983,3) {TimezonePeriod.new(415791000,436356000,-36000,0,:CKT)}
add_period(1983,10) {TimezonePeriod.new(436356000,447240600,-36000,1800,:CKHST)}
add_period(1984,3) {TimezonePeriod.new(447240600,467805600,-36000,0,:CKT)}
add_period(1984,10) {TimezonePeriod.new(467805600,478690200,-36000,1800,:CKHST)}
add_period(1985,3) {TimezonePeriod.new(478690200,499255200,-36000,0,:CKT)}
add_period(1985,10) {TimezonePeriod.new(499255200,510139800,-36000,1800,:CKHST)}
add_period(1986,3) {TimezonePeriod.new(510139800,530704800,-36000,0,:CKT)}
add_period(1986,10) {TimezonePeriod.new(530704800,541589400,-36000,1800,:CKHST)}
add_period(1987,3) {TimezonePeriod.new(541589400,562154400,-36000,0,:CKT)}
add_period(1987,10) {TimezonePeriod.new(562154400,573643800,-36000,1800,:CKHST)}
add_period(1988,3) {TimezonePeriod.new(573643800,594208800,-36000,0,:CKT)}
add_period(1988,10) {TimezonePeriod.new(594208800,605093400,-36000,1800,:CKHST)}
add_period(1989,3) {TimezonePeriod.new(605093400,625658400,-36000,0,:CKT)}
add_period(1989,10) {TimezonePeriod.new(625658400,636543000,-36000,1800,:CKHST)}
add_period(1990,3) {TimezonePeriod.new(636543000,657108000,-36000,0,:CKT)}
add_period(1990,10) {TimezonePeriod.new(657108000,667992600,-36000,1800,:CKHST)}
add_period(1991,3) {TimezonePeriod.new(667992600,nil,-36000,0,:CKT)}
end
end
end
end
