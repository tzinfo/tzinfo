require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Regina < Timezone #:nodoc:
setup
set_identifier('America/Regina')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17403046493,7200),0,Date::ITALY),-25116,0,:'LMT')}
add_period(1905,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(17403046493,7200),0,Date::ITALY),DateTime.new0(Rational.new!(19373583,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1918,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19373583,8),0,Date::ITALY),DateTime.new0(Rational.new!(14531387,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14531387,6),0,Date::ITALY),DateTime.new0(Rational.new!(58226419,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1930,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58226419,24),0,Date::ITALY),DateTime.new0(Rational.new!(9705019,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1930,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9705019,4),0,Date::ITALY),DateTime.new0(Rational.new!(58235155,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1931,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58235155,24),0,Date::ITALY),DateTime.new0(Rational.new!(9706475,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9706475,4),0,Date::ITALY),DateTime.new0(Rational.new!(58243891,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1932,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58243891,24),0,Date::ITALY),DateTime.new0(Rational.new!(9707931,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9707931,4),0,Date::ITALY),DateTime.new0(Rational.new!(58252795,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1933,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58252795,24),0,Date::ITALY),DateTime.new0(Rational.new!(9709387,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1933,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9709387,4),0,Date::ITALY),DateTime.new0(Rational.new!(58261531,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1934,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58261531,24),0,Date::ITALY),DateTime.new0(Rational.new!(9710871,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1934,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9710871,4),0,Date::ITALY),DateTime.new0(Rational.new!(58287235,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1937,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58287235,24),0,Date::ITALY),DateTime.new0(Rational.new!(9715267,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1937,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9715267,4),0,Date::ITALY),DateTime.new0(Rational.new!(58295971,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1938,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58295971,24),0,Date::ITALY),DateTime.new0(Rational.new!(9716695,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1938,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9716695,4),0,Date::ITALY),DateTime.new0(Rational.new!(58304707,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1939,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58304707,24),0,Date::ITALY),DateTime.new0(Rational.new!(9718179,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1939,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9718179,4),0,Date::ITALY),DateTime.new0(Rational.new!(58313611,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1940,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58313611,24),0,Date::ITALY),DateTime.new0(Rational.new!(9719663,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1940,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9719663,4),0,Date::ITALY),DateTime.new0(Rational.new!(58322347,24),0,Date::ITALY),-25200,0,:'MST')}
add_period(1941,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58322347,24),0,Date::ITALY),DateTime.new0(Rational.new!(9721119,4),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1941,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9721119,4),0,Date::ITALY),DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19443199,8),0,Date::ITALY),DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),-25200,3600,:'MWT')}
add_period(1945,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),DateTime.new0(Rational.new!(14590373,6),0,Date::ITALY),-25200,3600,:'MPT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14590373,6),0,Date::ITALY),DateTime.new0(Rational.new!(19455399,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1946,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19455399,8),0,Date::ITALY),DateTime.new0(Rational.new!(14592641,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1946,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14592641,6),0,Date::ITALY),DateTime.new0(Rational.new!(19458423,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1947,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19458423,8),0,Date::ITALY),DateTime.new0(Rational.new!(14594741,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1947,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14594741,6),0,Date::ITALY),DateTime.new0(Rational.new!(19461335,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19461335,8),0,Date::ITALY),DateTime.new0(Rational.new!(14596925,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1948,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14596925,6),0,Date::ITALY),DateTime.new0(Rational.new!(19464247,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19464247,8),0,Date::ITALY),DateTime.new0(Rational.new!(14599109,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1949,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14599109,6),0,Date::ITALY),DateTime.new0(Rational.new!(19467215,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19467215,8),0,Date::ITALY),DateTime.new0(Rational.new!(14601293,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1950,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14601293,6),0,Date::ITALY),DateTime.new0(Rational.new!(19470127,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19470127,8),0,Date::ITALY),DateTime.new0(Rational.new!(14603519,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14603519,6),0,Date::ITALY),DateTime.new0(Rational.new!(19473039,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19473039,8),0,Date::ITALY),DateTime.new0(Rational.new!(14605703,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1952,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14605703,6),0,Date::ITALY),DateTime.new0(Rational.new!(19475951,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1953,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19475951,8),0,Date::ITALY),DateTime.new0(Rational.new!(14607887,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1953,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14607887,6),0,Date::ITALY),DateTime.new0(Rational.new!(19478863,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1954,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19478863,8),0,Date::ITALY),DateTime.new0(Rational.new!(14610071,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1954,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14610071,6),0,Date::ITALY),DateTime.new0(Rational.new!(19481775,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1955,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19481775,8),0,Date::ITALY),DateTime.new0(Rational.new!(14612255,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1955,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14612255,6),0,Date::ITALY),DateTime.new0(Rational.new!(19484743,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1956,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19484743,8),0,Date::ITALY),DateTime.new0(Rational.new!(14614481,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1956,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14614481,6),0,Date::ITALY),DateTime.new0(Rational.new!(19487655,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1957,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19487655,8),0,Date::ITALY),DateTime.new0(Rational.new!(14616665,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1957,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14616665,6),0,Date::ITALY),DateTime.new0(Rational.new!(19493479,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1959,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19493479,8),0,Date::ITALY),DateTime.new0(Rational.new!(14621201,6),0,Date::ITALY),-25200,3600,:'MDT')}
add_period(1959,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14621201,6),0,Date::ITALY),DateTime.new0(Rational.new!(19496391,8),0,Date::ITALY),-25200,0,:'MST')}
add_period(1960,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19496391,8),0,Date::ITALY),nil,-21600,0,:'CST')}
end
end
end
end
