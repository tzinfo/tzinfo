require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Port__m__au__m__Prince < Timezone #:nodoc:
setup
set_identifier('America/Port-au-Prince')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2604278197,1080),0,Date::ITALY),-17360,0,:LMT)}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2604278197,1080),0,Date::ITALY),DateTime.new0(Rational.new!(3486604609,1440),0,Date::ITALY),-17340,0,:PPMT)}
add_period(1917,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(3486604609,1440),0,Date::ITALY),421218000,-18000,0,:EST)}
add_period(1983,5) {TimezonePeriod.new(421218000,436334400,-18000,3600,:EDT)}
add_period(1983,10) {TimezonePeriod.new(436334400,452062800,-18000,0,:EST)}
add_period(1984,4) {TimezonePeriod.new(452062800,467784000,-18000,3600,:EDT)}
add_period(1984,10) {TimezonePeriod.new(467784000,483512400,-18000,0,:EST)}
add_period(1985,4) {TimezonePeriod.new(483512400,499233600,-18000,3600,:EDT)}
add_period(1985,10) {TimezonePeriod.new(499233600,514962000,-18000,0,:EST)}
add_period(1986,4) {TimezonePeriod.new(514962000,530683200,-18000,3600,:EDT)}
add_period(1986,10) {TimezonePeriod.new(530683200,546411600,-18000,0,:EST)}
add_period(1987,4) {TimezonePeriod.new(546411600,562132800,-18000,3600,:EDT)}
add_period(1987,10) {TimezonePeriod.new(562132800,576050400,-18000,0,:EST)}
add_period(1988,4) {TimezonePeriod.new(576050400,594194400,-18000,3600,:EDT)}
add_period(1988,10) {TimezonePeriod.new(594194400,607500000,-18000,0,:EST)}
add_period(1989,4) {TimezonePeriod.new(607500000,625644000,-18000,3600,:EDT)}
add_period(1989,10) {TimezonePeriod.new(625644000,638949600,-18000,0,:EST)}
add_period(1990,4) {TimezonePeriod.new(638949600,657093600,-18000,3600,:EDT)}
add_period(1990,10) {TimezonePeriod.new(657093600,671004000,-18000,0,:EST)}
add_period(1991,4) {TimezonePeriod.new(671004000,688543200,-18000,3600,:EDT)}
add_period(1991,10) {TimezonePeriod.new(688543200,702453600,-18000,0,:EST)}
add_period(1992,4) {TimezonePeriod.new(702453600,719992800,-18000,3600,:EDT)}
add_period(1992,10) {TimezonePeriod.new(719992800,733903200,-18000,0,:EST)}
add_period(1993,4) {TimezonePeriod.new(733903200,752047200,-18000,3600,:EDT)}
add_period(1993,10) {TimezonePeriod.new(752047200,765352800,-18000,0,:EST)}
add_period(1994,4) {TimezonePeriod.new(765352800,783496800,-18000,3600,:EDT)}
add_period(1994,10) {TimezonePeriod.new(783496800,796802400,-18000,0,:EST)}
add_period(1995,4) {TimezonePeriod.new(796802400,814946400,-18000,3600,:EDT)}
add_period(1995,10) {TimezonePeriod.new(814946400,828856800,-18000,0,:EST)}
add_period(1996,4) {TimezonePeriod.new(828856800,846396000,-18000,3600,:EDT)}
add_period(1996,10) {TimezonePeriod.new(846396000,860306400,-18000,0,:EST)}
add_period(1997,4) {TimezonePeriod.new(860306400,877845600,-18000,3600,:EDT)}
add_period(1997,10) {TimezonePeriod.new(877845600,1112504400,-18000,0,:EST)}
add_period(2005,4) {TimezonePeriod.new(1112504400,1130644800,-18000,3600,:EDT)}
add_period(2005,10) {TimezonePeriod.new(1130644800,nil,-18000,0,:EST)}
end
end
end
end
