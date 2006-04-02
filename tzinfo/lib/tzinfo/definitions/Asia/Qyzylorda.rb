require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Qyzylorda < Timezone #:nodoc:
setup
set_identifier('Asia/Qyzylorda')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(6544549759,2700),0,Date::ITALY),15712,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(6544549759,2700),0,Date::ITALY),DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),14400,0,:'KIZT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278445,3),0,Date::ITALY),354913200,18000,0,:'KIZT')}
add_period(1981,3) {TimezonePeriod.new(354913200,370720800,18000,3600,:'KIZST')}
add_period(1981,9) {TimezonePeriod.new(370720800,386445600,21600,0,:'KIZT')}
add_period(1982,3) {TimezonePeriod.new(386445600,402256800,18000,3600,:'KIZST')}
add_period(1982,9) {TimezonePeriod.new(402256800,417985200,18000,0,:'KIZT')}
add_period(1983,3) {TimezonePeriod.new(417985200,433792800,18000,3600,:'KIZST')}
add_period(1983,9) {TimezonePeriod.new(433792800,449607600,18000,0,:'KIZT')}
add_period(1984,3) {TimezonePeriod.new(449607600,465339600,18000,3600,:'KIZST')}
add_period(1984,9) {TimezonePeriod.new(465339600,481064400,18000,0,:'KIZT')}
add_period(1985,3) {TimezonePeriod.new(481064400,496789200,18000,3600,:'KIZST')}
add_period(1985,9) {TimezonePeriod.new(496789200,512514000,18000,0,:'KIZT')}
add_period(1986,3) {TimezonePeriod.new(512514000,528238800,18000,3600,:'KIZST')}
add_period(1986,9) {TimezonePeriod.new(528238800,543963600,18000,0,:'KIZT')}
add_period(1987,3) {TimezonePeriod.new(543963600,559688400,18000,3600,:'KIZST')}
add_period(1987,9) {TimezonePeriod.new(559688400,575413200,18000,0,:'KIZT')}
add_period(1988,3) {TimezonePeriod.new(575413200,591138000,18000,3600,:'KIZST')}
add_period(1988,9) {TimezonePeriod.new(591138000,606862800,18000,0,:'KIZT')}
add_period(1989,3) {TimezonePeriod.new(606862800,622587600,18000,3600,:'KIZST')}
add_period(1989,9) {TimezonePeriod.new(622587600,638312400,18000,0,:'KIZT')}
add_period(1990,3) {TimezonePeriod.new(638312400,654642000,18000,3600,:'KIZST')}
add_period(1990,9) {TimezonePeriod.new(654642000,692823600,18000,0,:'KIZT')}
add_period(1991,12) {TimezonePeriod.new(692823600,695768400,18000,0,:'QYZT')}
add_period(1992,1) {TimezonePeriod.new(695768400,701802000,21600,0,:'QYZT')}
add_period(1992,3) {TimezonePeriod.new(701802000,717523200,21600,3600,:'QYZST')}
add_period(1992,9) {TimezonePeriod.new(717523200,733262400,21600,0,:'QYZT')}
add_period(1993,3) {TimezonePeriod.new(733262400,748987200,21600,3600,:'QYZST')}
add_period(1993,9) {TimezonePeriod.new(748987200,764712000,21600,0,:'QYZT')}
add_period(1994,3) {TimezonePeriod.new(764712000,780436800,21600,3600,:'QYZST')}
add_period(1994,9) {TimezonePeriod.new(780436800,796161600,21600,0,:'QYZT')}
add_period(1995,3) {TimezonePeriod.new(796161600,811886400,21600,3600,:'QYZST')}
add_period(1995,9) {TimezonePeriod.new(811886400,828216000,21600,0,:'QYZT')}
add_period(1996,3) {TimezonePeriod.new(828216000,846360000,21600,3600,:'QYZST')}
add_period(1996,10) {TimezonePeriod.new(846360000,859665600,21600,0,:'QYZT')}
add_period(1997,3) {TimezonePeriod.new(859665600,877809600,21600,3600,:'QYZST')}
add_period(1997,10) {TimezonePeriod.new(877809600,891115200,21600,0,:'QYZT')}
add_period(1998,3) {TimezonePeriod.new(891115200,909259200,21600,3600,:'QYZST')}
add_period(1998,10) {TimezonePeriod.new(909259200,922564800,21600,0,:'QYZT')}
add_period(1999,3) {TimezonePeriod.new(922564800,941313600,21600,3600,:'QYZST')}
add_period(1999,10) {TimezonePeriod.new(941313600,954014400,21600,0,:'QYZT')}
add_period(2000,3) {TimezonePeriod.new(954014400,972763200,21600,3600,:'QYZST')}
add_period(2000,10) {TimezonePeriod.new(972763200,985464000,21600,0,:'QYZT')}
add_period(2001,3) {TimezonePeriod.new(985464000,1004212800,21600,3600,:'QYZST')}
add_period(2001,10) {TimezonePeriod.new(1004212800,1017518400,21600,0,:'QYZT')}
add_period(2002,3) {TimezonePeriod.new(1017518400,1035662400,21600,3600,:'QYZST')}
add_period(2002,10) {TimezonePeriod.new(1035662400,1048968000,21600,0,:'QYZT')}
add_period(2003,3) {TimezonePeriod.new(1048968000,1067112000,21600,3600,:'QYZST')}
add_period(2003,10) {TimezonePeriod.new(1067112000,1080417600,21600,0,:'QYZT')}
add_period(2004,3) {TimezonePeriod.new(1080417600,1099166400,21600,3600,:'QYZST')}
add_period(2004,10) {TimezonePeriod.new(1099166400,nil,21600,0,:'QYZT')}
end
end
end
end
