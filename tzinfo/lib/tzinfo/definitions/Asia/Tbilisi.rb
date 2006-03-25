require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tbilisi < Timezone #:nodoc:
setup
set_identifier('Asia/Tbilisi')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52006652111,21600),0,Date::ITALY),10756,0,:'LMT')}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52006652111,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52356399311,21600),0,Date::ITALY),10756,0,:'TBMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52356399311,21600),0,Date::ITALY),DateTime.new0(Rational.new!(19487187,8),0,Date::ITALY),10800,0,:'TBIT')}
add_period(1957,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19487187,8),0,Date::ITALY),354916800,14400,0,:'TBIT')}
add_period(1981,3) {TimezonePeriod.new(354916800,370724400,14400,3600,:'TBIST')}
add_period(1981,9) {TimezonePeriod.new(370724400,386452800,14400,0,:'TBIT')}
add_period(1982,3) {TimezonePeriod.new(386452800,402260400,14400,3600,:'TBIST')}
add_period(1982,9) {TimezonePeriod.new(402260400,417988800,14400,0,:'TBIT')}
add_period(1983,3) {TimezonePeriod.new(417988800,433796400,14400,3600,:'TBIST')}
add_period(1983,9) {TimezonePeriod.new(433796400,449611200,14400,0,:'TBIT')}
add_period(1984,3) {TimezonePeriod.new(449611200,465343200,14400,3600,:'TBIST')}
add_period(1984,9) {TimezonePeriod.new(465343200,481068000,14400,0,:'TBIT')}
add_period(1985,3) {TimezonePeriod.new(481068000,496792800,14400,3600,:'TBIST')}
add_period(1985,9) {TimezonePeriod.new(496792800,512517600,14400,0,:'TBIT')}
add_period(1986,3) {TimezonePeriod.new(512517600,528242400,14400,3600,:'TBIST')}
add_period(1986,9) {TimezonePeriod.new(528242400,543967200,14400,0,:'TBIT')}
add_period(1987,3) {TimezonePeriod.new(543967200,559692000,14400,3600,:'TBIST')}
add_period(1987,9) {TimezonePeriod.new(559692000,575416800,14400,0,:'TBIT')}
add_period(1988,3) {TimezonePeriod.new(575416800,591141600,14400,3600,:'TBIST')}
add_period(1988,9) {TimezonePeriod.new(591141600,606866400,14400,0,:'TBIT')}
add_period(1989,3) {TimezonePeriod.new(606866400,622591200,14400,3600,:'TBIST')}
add_period(1989,9) {TimezonePeriod.new(622591200,638316000,14400,0,:'TBIT')}
add_period(1990,3) {TimezonePeriod.new(638316000,654645600,14400,3600,:'TBIST')}
add_period(1990,9) {TimezonePeriod.new(654645600,670370400,14400,0,:'TBIT')}
add_period(1991,3) {TimezonePeriod.new(670370400,671140800,10800,3600,:'TBIST')}
add_period(1991,4) {TimezonePeriod.new(671140800,686098800,10800,3600,:'GET')}
add_period(1991,9) {TimezonePeriod.new(686098800,694213200,10800,0,:'GET')}
add_period(1991,12) {TimezonePeriod.new(694213200,701816400,10800,0,:'GET')}
add_period(1992,3) {TimezonePeriod.new(701816400,717537600,10800,3600,:'GEST')}
add_period(1992,9) {TimezonePeriod.new(717537600,733266000,10800,0,:'GET')}
add_period(1993,3) {TimezonePeriod.new(733266000,748987200,10800,3600,:'GEST')}
add_period(1993,9) {TimezonePeriod.new(748987200,764715600,10800,0,:'GET')}
add_period(1994,3) {TimezonePeriod.new(764715600,780436800,10800,3600,:'GEST')}
add_period(1994,9) {TimezonePeriod.new(780436800,796161600,14400,0,:'GET')}
add_period(1995,3) {TimezonePeriod.new(796161600,811882800,14400,3600,:'GEST')}
add_period(1995,9) {TimezonePeriod.new(811882800,828216000,14400,0,:'GET')}
add_period(1996,3) {TimezonePeriod.new(828216000,846356400,14400,3600,:'GEST')}
add_period(1996,10) {TimezonePeriod.new(846356400,859662000,14400,3600,:'GEST')}
add_period(1997,3) {TimezonePeriod.new(859662000,877806000,14400,3600,:'GET')}
add_period(1997,10) {TimezonePeriod.new(877806000,891115200,14400,0,:'GET')}
add_period(1998,3) {TimezonePeriod.new(891115200,909255600,14400,3600,:'GEST')}
add_period(1998,10) {TimezonePeriod.new(909255600,922564800,14400,0,:'GET')}
add_period(1999,3) {TimezonePeriod.new(922564800,941310000,14400,3600,:'GEST')}
add_period(1999,10) {TimezonePeriod.new(941310000,954014400,14400,0,:'GET')}
add_period(2000,3) {TimezonePeriod.new(954014400,972759600,14400,3600,:'GEST')}
add_period(2000,10) {TimezonePeriod.new(972759600,985464000,14400,0,:'GET')}
add_period(2001,3) {TimezonePeriod.new(985464000,1004209200,14400,3600,:'GEST')}
add_period(2001,10) {TimezonePeriod.new(1004209200,1017518400,14400,0,:'GET')}
add_period(2002,3) {TimezonePeriod.new(1017518400,1035658800,14400,3600,:'GEST')}
add_period(2002,10) {TimezonePeriod.new(1035658800,1048968000,14400,0,:'GET')}
add_period(2003,3) {TimezonePeriod.new(1048968000,1067108400,14400,3600,:'GEST')}
add_period(2003,10) {TimezonePeriod.new(1067108400,1080417600,14400,0,:'GET')}
add_period(2004,3) {TimezonePeriod.new(1080417600,1088276400,14400,3600,:'GEST')}
add_period(2004,6) {TimezonePeriod.new(1088276400,1099177200,10800,3600,:'GET')}
add_period(2004,10) {TimezonePeriod.new(1099177200,1111878000,10800,0,:'GET')}
add_period(2005,3) {TimezonePeriod.new(1111878000,nil,14400,0,:'GET')}
end
end
end
end
