require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Qyzylorda < Timezone #:nodoc:
setup
set_identifier('Asia/Qyzylorda')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(6544549759,2700),0,Date::ITALY),15712,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(6544549759,2700),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'KIZT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),21600,0,:'KIZT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),18000,3600,:'KIZST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),DateTime.new0(Rational.new!(58758175,24),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1990,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58758175,24),0,Date::ITALY),DateTime.new0(Rational.new!(58766551,24),0,Date::ITALY),18000,0,:'KIZT')}
add_period(1991,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58766551,24),0,Date::ITALY),DateTime.new0(Rational.new!(19589123,8),0,Date::ITALY),18000,0,:'QYZT')}
add_period(1992,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19589123,8),0,Date::ITALY),DateTime.new0(Rational.new!(58769045,24),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58769045,24),0,Date::ITALY),DateTime.new0(Rational.new!(14693353,6),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14693353,6),0,Date::ITALY),DateTime.new0(Rational.new!(7347223,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1993,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7347223,3),0,Date::ITALY),DateTime.new0(Rational.new!(7347769,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7347769,3),0,Date::ITALY),DateTime.new0(Rational.new!(7348315,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1994,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7348315,3),0,Date::ITALY),DateTime.new0(Rational.new!(7348861,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7348861,3),0,Date::ITALY),DateTime.new0(Rational.new!(7349407,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1995,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7349407,3),0,Date::ITALY),DateTime.new0(Rational.new!(7349953,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7349953,3),0,Date::ITALY),DateTime.new0(Rational.new!(7350520,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1996,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7350520,3),0,Date::ITALY),DateTime.new0(Rational.new!(7351150,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1996,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7351150,3),0,Date::ITALY),DateTime.new0(Rational.new!(7351612,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7351612,3),0,Date::ITALY),DateTime.new0(Rational.new!(7352242,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7352242,3),0,Date::ITALY),DateTime.new0(Rational.new!(7352704,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7352704,3),0,Date::ITALY),DateTime.new0(Rational.new!(7353334,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7353334,3),0,Date::ITALY),DateTime.new0(Rational.new!(7353796,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(1999,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7353796,3),0,Date::ITALY),DateTime.new0(Rational.new!(7354447,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7354447,3),0,Date::ITALY),DateTime.new0(Rational.new!(7354888,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7354888,3),0,Date::ITALY),DateTime.new0(Rational.new!(7355539,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7355539,3),0,Date::ITALY),DateTime.new0(Rational.new!(7355980,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2001,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7355980,3),0,Date::ITALY),DateTime.new0(Rational.new!(7356631,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7356631,3),0,Date::ITALY),DateTime.new0(Rational.new!(7357093,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2002,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7357093,3),0,Date::ITALY),DateTime.new0(Rational.new!(7357723,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7357723,3),0,Date::ITALY),DateTime.new0(Rational.new!(7358185,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2003,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7358185,3),0,Date::ITALY),DateTime.new0(Rational.new!(7358815,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(2003,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7358815,3),0,Date::ITALY),DateTime.new0(Rational.new!(7359277,3),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2004,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7359277,3),0,Date::ITALY),DateTime.new0(Rational.new!(7359928,3),0,Date::ITALY),21600,3600,:'QYZST')}
add_period(2004,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7359928,3),0,Date::ITALY),DateTime.new0(Rational.new!(9813777,4),0,Date::ITALY),21600,0,:'QYZT')}
add_period(2005,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9813777,4),0,Date::ITALY),nil,21600,0,:'QYZT')}
end
end
end
end
