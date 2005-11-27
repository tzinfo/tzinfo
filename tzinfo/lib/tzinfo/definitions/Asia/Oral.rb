require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Oral < Timezone #:nodoc:
setup
set_identifier('Asia/Oral')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17452132973,7200),0,Date::ITALY),12324,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(17452132973,7200),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'URAT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),18000,0,:'URAT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58672687,24),0,Date::ITALY),DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9779513,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),21600,0,:'URAT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780973,4),0,Date::ITALY),DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),18000,0,:'URAT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690207,24),0,Date::ITALY),DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9782433,4),0,Date::ITALY),DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),18000,0,:'URAT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698991,24),0,Date::ITALY),DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19567787,8),0,Date::ITALY),DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),18000,0,:'URAT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19569243,8),0,Date::ITALY),DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570699,8),0,Date::ITALY),DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),18000,0,:'URAT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19572155,8),0,Date::ITALY),DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573611,8),0,Date::ITALY),DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),18000,0,:'URAT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19575067,8),0,Date::ITALY),DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576523,8),0,Date::ITALY),DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),18000,0,:'URAT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19577979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),18000,3600,:'URAST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579435,8),0,Date::ITALY),DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),18000,0,:'URAT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19580891,8),0,Date::ITALY),DateTime.new0(Rational.new!(29373521,12),0,Date::ITALY),14400,3600,:'URAST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29373521,12),0,Date::ITALY),DateTime.new0(Rational.new!(29375705,12),0,Date::ITALY),14400,0,:'URAT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29375705,12),0,Date::ITALY),DateTime.new0(Rational.new!(29377973,12),0,Date::ITALY),14400,3600,:'URAST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29377973,12),0,Date::ITALY),DateTime.new0(Rational.new!(7344772,3),0,Date::ITALY),14400,0,:'URAT')}
add_period(1990,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7344772,3),0,Date::ITALY),DateTime.new0(Rational.new!(7345819,3),0,Date::ITALY),14400,0,:'URAT')}
add_period(1991,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7345819,3),0,Date::ITALY),DateTime.new0(Rational.new!(58769047,24),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58769047,24),0,Date::ITALY),DateTime.new0(Rational.new!(9795569,4),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9795569,4),0,Date::ITALY),DateTime.new0(Rational.new!(29388893,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1993,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29388893,12),0,Date::ITALY),DateTime.new0(Rational.new!(29391077,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29391077,12),0,Date::ITALY),DateTime.new0(Rational.new!(29393261,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1994,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29393261,12),0,Date::ITALY),DateTime.new0(Rational.new!(29395445,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29395445,12),0,Date::ITALY),DateTime.new0(Rational.new!(29397629,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1995,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29397629,12),0,Date::ITALY),DateTime.new0(Rational.new!(29399813,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29399813,12),0,Date::ITALY),DateTime.new0(Rational.new!(29402081,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1996,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29402081,12),0,Date::ITALY),DateTime.new0(Rational.new!(29404601,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1996,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29404601,12),0,Date::ITALY),DateTime.new0(Rational.new!(29406449,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29406449,12),0,Date::ITALY),DateTime.new0(Rational.new!(29408969,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29408969,12),0,Date::ITALY),DateTime.new0(Rational.new!(29410817,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29410817,12),0,Date::ITALY),DateTime.new0(Rational.new!(29413337,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29413337,12),0,Date::ITALY),DateTime.new0(Rational.new!(29415185,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(1999,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29415185,12),0,Date::ITALY),DateTime.new0(Rational.new!(29417789,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29417789,12),0,Date::ITALY),DateTime.new0(Rational.new!(29419553,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29419553,12),0,Date::ITALY),DateTime.new0(Rational.new!(29422157,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29422157,12),0,Date::ITALY),DateTime.new0(Rational.new!(29423921,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2001,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29423921,12),0,Date::ITALY),DateTime.new0(Rational.new!(29426525,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29426525,12),0,Date::ITALY),DateTime.new0(Rational.new!(29428373,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2002,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29428373,12),0,Date::ITALY),DateTime.new0(Rational.new!(29430893,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29430893,12),0,Date::ITALY),DateTime.new0(Rational.new!(29432741,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2003,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29432741,12),0,Date::ITALY),DateTime.new0(Rational.new!(29435261,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(2003,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29435261,12),0,Date::ITALY),DateTime.new0(Rational.new!(29437109,12),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2004,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29437109,12),0,Date::ITALY),DateTime.new0(Rational.new!(29439713,12),0,Date::ITALY),14400,3600,:'ORAST')}
add_period(2004,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29439713,12),0,Date::ITALY),DateTime.new0(Rational.new!(7360333,3),0,Date::ITALY),14400,0,:'ORAT')}
add_period(2005,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7360333,3),0,Date::ITALY),nil,18000,0,:'ORAT')}
end
end
end
end
