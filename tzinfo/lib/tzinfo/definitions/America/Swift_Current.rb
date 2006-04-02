require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Swift_Current < Timezone #:nodoc:
setup
set_identifier('America/Swift_Current')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5220913967,2160),0,Date::ITALY),-25880,0,:'LMT')}
add_period(1905,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(5220913967,2160),0,Date::ITALY),DateTime.new0(Rational.new!(19373583,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1918,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19373583,8),0,Date::ITALY),DateTime.new0(Rational.new!(14531387,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14531387,6),0,Date::ITALY),DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),-25200,3600,:'MWT')}
add_period(1945,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),DateTime.new0(Rational.new!(14590373,6),0,Date::ITALY),-25200,3600,:'MPT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14590373,6),0,Date::ITALY),DateTime.new0(Rational.new!(19455511,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1946,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19455511,8),0,Date::ITALY),DateTime.new0(Rational.new!(14592641,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1946,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14592641,6),0,Date::ITALY),DateTime.new0(Rational.new!(19458423,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1947,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19458423,8),0,Date::ITALY),DateTime.new0(Rational.new!(14594741,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1947,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14594741,6),0,Date::ITALY),DateTime.new0(Rational.new!(19461335,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19461335,8),0,Date::ITALY),DateTime.new0(Rational.new!(14596925,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1948,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14596925,6),0,Date::ITALY),DateTime.new0(Rational.new!(19464247,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19464247,8),0,Date::ITALY),DateTime.new0(Rational.new!(14599109,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1949,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14599109,6),0,Date::ITALY),DateTime.new0(Rational.new!(19487655,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1957,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19487655,8),0,Date::ITALY),DateTime.new0(Rational.new!(14616833,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1957,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14616833,6),0,Date::ITALY),DateTime.new0(Rational.new!(19493479,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1959,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19493479,8),0,Date::ITALY),DateTime.new0(Rational.new!(14621201,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1959,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14621201,6),0,Date::ITALY),DateTime.new0(Rational.new!(19496391,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1960,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19496391,8),0,Date::ITALY),DateTime.new0(Rational.new!(14623217,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1960,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14623217,6),0,Date::ITALY),DateTime.new0(Rational.new!(19499359,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1961,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19499359,8),0,Date::ITALY),DateTime.new0(Rational.new!(14625401,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1961,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14625401,6),0,Date::ITALY),73472400,-25200,0,:'MST')}
add_period(1972,4) {TimezonePeriod.new(73472400,nil,-21600,0,:'CST')}
end
end
end
end
