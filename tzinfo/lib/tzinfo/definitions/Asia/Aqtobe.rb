require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Aqtobe < Timezone #:nodoc:
setup
set_identifier('Asia/Aqtobe')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5235639857,2160),0,Date::ITALY),13720,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(5235639857,2160),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'AKTT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),21600,0,:'AKTT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19582347,8),0,Date::ITALY),DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19583803,8),0,Date::ITALY),DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),18000,3600,:'AKTST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19585315,8),0,Date::ITALY),DateTime.new0(Rational.new!(58758175,24),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1990,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58758175,24),0,Date::ITALY),DateTime.new0(Rational.new!(58766551,24),0,Date::ITALY),18000,0,:'AKTT')}
add_period(1991,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58766551,24),0,Date::ITALY),DateTime.new0(Rational.new!(9794841,4),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9794841,4),0,Date::ITALY),DateTime.new0(Rational.new!(58773413,24),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58773413,24),0,Date::ITALY),DateTime.new0(Rational.new!(19592595,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1993,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19592595,8),0,Date::ITALY),DateTime.new0(Rational.new!(19594051,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19594051,8),0,Date::ITALY),DateTime.new0(Rational.new!(19595507,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1994,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19595507,8),0,Date::ITALY),DateTime.new0(Rational.new!(19596963,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19596963,8),0,Date::ITALY),DateTime.new0(Rational.new!(19598419,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1995,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19598419,8),0,Date::ITALY),DateTime.new0(Rational.new!(19599875,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19599875,8),0,Date::ITALY),DateTime.new0(Rational.new!(19601387,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1996,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19601387,8),0,Date::ITALY),DateTime.new0(Rational.new!(19603067,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1996,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19603067,8),0,Date::ITALY),DateTime.new0(Rational.new!(19604299,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19604299,8),0,Date::ITALY),DateTime.new0(Rational.new!(19605979,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19605979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19607211,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19607211,8),0,Date::ITALY),DateTime.new0(Rational.new!(19608891,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19608891,8),0,Date::ITALY),DateTime.new0(Rational.new!(19610123,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(1999,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19610123,8),0,Date::ITALY),DateTime.new0(Rational.new!(19611859,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19611859,8),0,Date::ITALY),DateTime.new0(Rational.new!(19613035,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19613035,8),0,Date::ITALY),DateTime.new0(Rational.new!(19614771,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19614771,8),0,Date::ITALY),DateTime.new0(Rational.new!(19615947,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2001,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19615947,8),0,Date::ITALY),DateTime.new0(Rational.new!(19617683,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19617683,8),0,Date::ITALY),DateTime.new0(Rational.new!(19618915,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2002,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19618915,8),0,Date::ITALY),DateTime.new0(Rational.new!(19620595,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19620595,8),0,Date::ITALY),DateTime.new0(Rational.new!(19621827,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2003,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19621827,8),0,Date::ITALY),DateTime.new0(Rational.new!(19623507,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(2003,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19623507,8),0,Date::ITALY),DateTime.new0(Rational.new!(19624739,8),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2004,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19624739,8),0,Date::ITALY),DateTime.new0(Rational.new!(19626475,8),0,Date::ITALY),18000,3600,:'AQTST')}
add_period(2004,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19626475,8),0,Date::ITALY),DateTime.new0(Rational.new!(58882663,24),0,Date::ITALY),18000,0,:'AQTT')}
add_period(2005,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58882663,24),0,Date::ITALY),nil,18000,0,:'AQTT')}
end
end
end
end
