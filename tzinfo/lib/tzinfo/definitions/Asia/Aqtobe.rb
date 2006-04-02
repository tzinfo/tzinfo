require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Aqtobe < Timezone #:nodoc:
setup
set_identifier('Asia/Aqtobe')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5235639857,2160),0,Date::ITALY),13720,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(5235639857,2160),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'AKTT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),354913200,18000,0,:'AKTT')}
add_period(1981,3) {TimezonePeriod.new(354913200,370720800,18000,3600,:'AKTST')}
add_period(1981,9) {TimezonePeriod.new(370720800,386445600,21600,0,:'AKTT')}
add_period(1982,3) {TimezonePeriod.new(386445600,402256800,18000,3600,:'AKTST')}
add_period(1982,9) {TimezonePeriod.new(402256800,417985200,18000,0,:'AKTT')}
add_period(1983,3) {TimezonePeriod.new(417985200,433792800,18000,3600,:'AKTST')}
add_period(1983,9) {TimezonePeriod.new(433792800,449607600,18000,0,:'AKTT')}
add_period(1984,3) {TimezonePeriod.new(449607600,465339600,18000,3600,:'AKTST')}
add_period(1984,9) {TimezonePeriod.new(465339600,481064400,18000,0,:'AKTT')}
add_period(1985,3) {TimezonePeriod.new(481064400,496789200,18000,3600,:'AKTST')}
add_period(1985,9) {TimezonePeriod.new(496789200,512514000,18000,0,:'AKTT')}
add_period(1986,3) {TimezonePeriod.new(512514000,528238800,18000,3600,:'AKTST')}
add_period(1986,9) {TimezonePeriod.new(528238800,543963600,18000,0,:'AKTT')}
add_period(1987,3) {TimezonePeriod.new(543963600,559688400,18000,3600,:'AKTST')}
add_period(1987,9) {TimezonePeriod.new(559688400,575413200,18000,0,:'AKTT')}
add_period(1988,3) {TimezonePeriod.new(575413200,591138000,18000,3600,:'AKTST')}
add_period(1988,9) {TimezonePeriod.new(591138000,606862800,18000,0,:'AKTT')}
add_period(1989,3) {TimezonePeriod.new(606862800,622587600,18000,3600,:'AKTST')}
add_period(1989,9) {TimezonePeriod.new(622587600,638312400,18000,0,:'AKTT')}
add_period(1990,3) {TimezonePeriod.new(638312400,654642000,18000,3600,:'AKTST')}
add_period(1990,9) {TimezonePeriod.new(654642000,692823600,18000,0,:'AKTT')}
add_period(1991,12) {TimezonePeriod.new(692823600,701805600,18000,0,:'AQTT')}
add_period(1992,3) {TimezonePeriod.new(701805600,717526800,18000,3600,:'AQTST')}
add_period(1992,9) {TimezonePeriod.new(717526800,733266000,18000,0,:'AQTT')}
add_period(1993,3) {TimezonePeriod.new(733266000,748990800,18000,3600,:'AQTST')}
add_period(1993,9) {TimezonePeriod.new(748990800,764715600,18000,0,:'AQTT')}
add_period(1994,3) {TimezonePeriod.new(764715600,780440400,18000,3600,:'AQTST')}
add_period(1994,9) {TimezonePeriod.new(780440400,796165200,18000,0,:'AQTT')}
add_period(1995,3) {TimezonePeriod.new(796165200,811890000,18000,3600,:'AQTST')}
add_period(1995,9) {TimezonePeriod.new(811890000,828219600,18000,0,:'AQTT')}
add_period(1996,3) {TimezonePeriod.new(828219600,846363600,18000,3600,:'AQTST')}
add_period(1996,10) {TimezonePeriod.new(846363600,859669200,18000,0,:'AQTT')}
add_period(1997,3) {TimezonePeriod.new(859669200,877813200,18000,3600,:'AQTST')}
add_period(1997,10) {TimezonePeriod.new(877813200,891118800,18000,0,:'AQTT')}
add_period(1998,3) {TimezonePeriod.new(891118800,909262800,18000,3600,:'AQTST')}
add_period(1998,10) {TimezonePeriod.new(909262800,922568400,18000,0,:'AQTT')}
add_period(1999,3) {TimezonePeriod.new(922568400,941317200,18000,3600,:'AQTST')}
add_period(1999,10) {TimezonePeriod.new(941317200,954018000,18000,0,:'AQTT')}
add_period(2000,3) {TimezonePeriod.new(954018000,972766800,18000,3600,:'AQTST')}
add_period(2000,10) {TimezonePeriod.new(972766800,985467600,18000,0,:'AQTT')}
add_period(2001,3) {TimezonePeriod.new(985467600,1004216400,18000,3600,:'AQTST')}
add_period(2001,10) {TimezonePeriod.new(1004216400,1017522000,18000,0,:'AQTT')}
add_period(2002,3) {TimezonePeriod.new(1017522000,1035666000,18000,3600,:'AQTST')}
add_period(2002,10) {TimezonePeriod.new(1035666000,1048971600,18000,0,:'AQTT')}
add_period(2003,3) {TimezonePeriod.new(1048971600,1067115600,18000,3600,:'AQTST')}
add_period(2003,10) {TimezonePeriod.new(1067115600,1080421200,18000,0,:'AQTT')}
add_period(2004,3) {TimezonePeriod.new(1080421200,1099170000,18000,3600,:'AQTST')}
add_period(2004,10) {TimezonePeriod.new(1099170000,nil,18000,0,:'AQTT')}
end
end
end
end
