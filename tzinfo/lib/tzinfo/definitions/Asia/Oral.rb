require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Oral < Timezone #:nodoc:
setup
set_identifier('Asia/Oral')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17452132973,7200),0,Date::ITALY),12324,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(17452132973,7200),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'URAT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),354913200,18000,0,:'URAT')}
add_period(1981,3) {TimezonePeriod.new(354913200,370720800,18000,3600,:'URAST')}
add_period(1981,9) {TimezonePeriod.new(370720800,386445600,21600,0,:'URAT')}
add_period(1982,3) {TimezonePeriod.new(386445600,402256800,18000,3600,:'URAST')}
add_period(1982,9) {TimezonePeriod.new(402256800,417985200,18000,0,:'URAT')}
add_period(1983,3) {TimezonePeriod.new(417985200,433792800,18000,3600,:'URAST')}
add_period(1983,9) {TimezonePeriod.new(433792800,449607600,18000,0,:'URAT')}
add_period(1984,3) {TimezonePeriod.new(449607600,465339600,18000,3600,:'URAST')}
add_period(1984,9) {TimezonePeriod.new(465339600,481064400,18000,0,:'URAT')}
add_period(1985,3) {TimezonePeriod.new(481064400,496789200,18000,3600,:'URAST')}
add_period(1985,9) {TimezonePeriod.new(496789200,512514000,18000,0,:'URAT')}
add_period(1986,3) {TimezonePeriod.new(512514000,528238800,18000,3600,:'URAST')}
add_period(1986,9) {TimezonePeriod.new(528238800,543963600,18000,0,:'URAT')}
add_period(1987,3) {TimezonePeriod.new(543963600,559688400,18000,3600,:'URAST')}
add_period(1987,9) {TimezonePeriod.new(559688400,575413200,18000,0,:'URAT')}
add_period(1988,3) {TimezonePeriod.new(575413200,591138000,18000,3600,:'URAST')}
add_period(1988,9) {TimezonePeriod.new(591138000,606862800,18000,0,:'URAT')}
add_period(1989,3) {TimezonePeriod.new(606862800,622591200,14400,3600,:'URAST')}
add_period(1989,9) {TimezonePeriod.new(622591200,638316000,14400,0,:'URAT')}
add_period(1990,3) {TimezonePeriod.new(638316000,654645600,14400,3600,:'URAST')}
add_period(1990,9) {TimezonePeriod.new(654645600,662673600,14400,0,:'URAT')}
add_period(1990,12) {TimezonePeriod.new(662673600,692827200,14400,0,:'URAT')}
add_period(1991,12) {TimezonePeriod.new(692827200,701809200,14400,0,:'ORAT')}
add_period(1992,3) {TimezonePeriod.new(701809200,717530400,14400,3600,:'ORAST')}
add_period(1992,9) {TimezonePeriod.new(717530400,733269600,14400,0,:'ORAT')}
add_period(1993,3) {TimezonePeriod.new(733269600,748994400,14400,3600,:'ORAST')}
add_period(1993,9) {TimezonePeriod.new(748994400,764719200,14400,0,:'ORAT')}
add_period(1994,3) {TimezonePeriod.new(764719200,780444000,14400,3600,:'ORAST')}
add_period(1994,9) {TimezonePeriod.new(780444000,796168800,14400,0,:'ORAT')}
add_period(1995,3) {TimezonePeriod.new(796168800,811893600,14400,3600,:'ORAST')}
add_period(1995,9) {TimezonePeriod.new(811893600,828223200,14400,0,:'ORAT')}
add_period(1996,3) {TimezonePeriod.new(828223200,846367200,14400,3600,:'ORAST')}
add_period(1996,10) {TimezonePeriod.new(846367200,859672800,14400,0,:'ORAT')}
add_period(1997,3) {TimezonePeriod.new(859672800,877816800,14400,3600,:'ORAST')}
add_period(1997,10) {TimezonePeriod.new(877816800,891122400,14400,0,:'ORAT')}
add_period(1998,3) {TimezonePeriod.new(891122400,909266400,14400,3600,:'ORAST')}
add_period(1998,10) {TimezonePeriod.new(909266400,922572000,14400,0,:'ORAT')}
add_period(1999,3) {TimezonePeriod.new(922572000,941320800,14400,3600,:'ORAST')}
add_period(1999,10) {TimezonePeriod.new(941320800,954021600,14400,0,:'ORAT')}
add_period(2000,3) {TimezonePeriod.new(954021600,972770400,14400,3600,:'ORAST')}
add_period(2000,10) {TimezonePeriod.new(972770400,985471200,14400,0,:'ORAT')}
add_period(2001,3) {TimezonePeriod.new(985471200,1004220000,14400,3600,:'ORAST')}
add_period(2001,10) {TimezonePeriod.new(1004220000,1017525600,14400,0,:'ORAT')}
add_period(2002,3) {TimezonePeriod.new(1017525600,1035669600,14400,3600,:'ORAST')}
add_period(2002,10) {TimezonePeriod.new(1035669600,1048975200,14400,0,:'ORAT')}
add_period(2003,3) {TimezonePeriod.new(1048975200,1067119200,14400,3600,:'ORAST')}
add_period(2003,10) {TimezonePeriod.new(1067119200,1080424800,14400,0,:'ORAT')}
add_period(2004,3) {TimezonePeriod.new(1080424800,1099173600,14400,3600,:'ORAST')}
add_period(2004,10) {TimezonePeriod.new(1099173600,1110830400,14400,0,:'ORAT')}
add_period(2005,3) {TimezonePeriod.new(1110830400,nil,18000,0,:'ORAT')}
end
end
end
end
