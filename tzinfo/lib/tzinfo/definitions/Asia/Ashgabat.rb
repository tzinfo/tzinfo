require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Ashgabat < Timezone #:nodoc:
setup
set_identifier('Asia/Ashgabat')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52356398497,21600),0,Date::ITALY),14012,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52356398497,21600),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'ASHT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),DateTime.new0(Rational.new!(58681447,24),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58681447,24),0,Date::ITALY),DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),18000,3600,:'ASHST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),DateTime.new0(Rational.new!(19586771,8),0,Date::ITALY),18000,0,:'ASHT')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19586771,8),0,Date::ITALY),DateTime.new0(Rational.new!(29382341,12),0,Date::ITALY),14400,3600,:'ASHST')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29382341,12),0,Date::ITALY),DateTime.new0(Rational.new!(7345669,3),0,Date::ITALY),14400,0,:'ASHT')}
add_period(1991,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7345669,3),0,Date::ITALY),DateTime.new0(Rational.new!(29383685,12),0,Date::ITALY),14400,0,:'TMT')}
add_period(1992,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29383685,12),0,Date::ITALY),nil,18000,0,:'TMT')}
end
end
end
end
