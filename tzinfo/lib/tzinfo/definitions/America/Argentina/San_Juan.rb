require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
module Argentina #:nodoc:
class San_Juan < Timezone #:nodoc:
setup
set_identifier('America/Argentina/San_Juan')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52123666111,21600),0,Date::ITALY),-16444,0,:LMT)}
add_period(1894,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(52123666111,21600),0,Date::ITALY),DateTime.new0(Rational.new!(1453467407,600),0,Date::ITALY),-15408,0,:CMT)}
add_period(1920,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(1453467407,600),0,Date::ITALY),DateTime.new0(Rational.new!(7278935,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1930,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7278935,3),0,Date::ITALY),DateTime.new0(Rational.new!(19411461,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1931,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19411461,8),0,Date::ITALY),DateTime.new0(Rational.new!(7279889,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7279889,3),0,Date::ITALY),DateTime.new0(Rational.new!(19414141,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1932,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19414141,8),0,Date::ITALY),DateTime.new0(Rational.new!(7281038,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1932,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7281038,3),0,Date::ITALY),DateTime.new0(Rational.new!(19417061,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1933,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19417061,8),0,Date::ITALY),DateTime.new0(Rational.new!(7282133,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1933,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7282133,3),0,Date::ITALY),DateTime.new0(Rational.new!(19419981,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1934,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19419981,8),0,Date::ITALY),DateTime.new0(Rational.new!(7283228,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1934,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7283228,3),0,Date::ITALY),DateTime.new0(Rational.new!(19422901,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1935,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19422901,8),0,Date::ITALY),DateTime.new0(Rational.new!(7284323,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1935,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7284323,3),0,Date::ITALY),DateTime.new0(Rational.new!(19425829,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1936,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19425829,8),0,Date::ITALY),DateTime.new0(Rational.new!(7285421,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1936,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7285421,3),0,Date::ITALY),DateTime.new0(Rational.new!(19428749,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1937,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19428749,8),0,Date::ITALY),DateTime.new0(Rational.new!(7286516,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1937,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7286516,3),0,Date::ITALY),DateTime.new0(Rational.new!(19431669,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1938,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19431669,8),0,Date::ITALY),DateTime.new0(Rational.new!(7287611,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1938,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7287611,3),0,Date::ITALY),DateTime.new0(Rational.new!(19434589,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1939,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19434589,8),0,Date::ITALY),DateTime.new0(Rational.new!(7288706,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1939,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7288706,3),0,Date::ITALY),DateTime.new0(Rational.new!(19437517,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1940,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19437517,8),0,Date::ITALY),DateTime.new0(Rational.new!(7289435,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1940,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(7289435,3),0,Date::ITALY),DateTime.new0(Rational.new!(19441285,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1941,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(19441285,8),0,Date::ITALY),DateTime.new0(Rational.new!(7290848,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1941,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7290848,3),0,Date::ITALY),DateTime.new0(Rational.new!(19447501,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1943,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(19447501,8),0,Date::ITALY),DateTime.new0(Rational.new!(7293038,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1943,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7293038,3),0,Date::ITALY),DateTime.new0(Rational.new!(19455045,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1946,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19455045,8),0,Date::ITALY),DateTime.new0(Rational.new!(7296284,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1946,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7296284,3),0,Date::ITALY),DateTime.new0(Rational.new!(19506429,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1963,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19506429,8),0,Date::ITALY),DateTime.new0(Rational.new!(7315136,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7315136,3),0,Date::ITALY),DateTime.new0(Rational.new!(19507645,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19507645,8),0,Date::ITALY),DateTime.new0(Rational.new!(7316051,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7316051,3),0,Date::ITALY),DateTime.new0(Rational.new!(19510565,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19510565,8),0,Date::ITALY),DateTime.new0(Rational.new!(7317146,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1965,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7317146,3),0,Date::ITALY),DateTime.new0(Rational.new!(19513485,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1966,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19513485,8),0,Date::ITALY),DateTime.new0(Rational.new!(7318241,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7318241,3),0,Date::ITALY),DateTime.new0(Rational.new!(19516661,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19516661,8),0,Date::ITALY),DateTime.new0(Rational.new!(7319294,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7319294,3),0,Date::ITALY),DateTime.new0(Rational.new!(19519629,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1968,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19519629,8),0,Date::ITALY),DateTime.new0(Rational.new!(7320407,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1968,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7320407,3),0,Date::ITALY),DateTime.new0(Rational.new!(19522541,8),0,Date::ITALY),-14400,3600,:ARST)}
add_period(1969,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19522541,8),0,Date::ITALY),DateTime.new0(Rational.new!(7321499,3),0,Date::ITALY),-14400,0,:ART)}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7321499,3),0,Date::ITALY),128142000,-10800,0,:ART)}
add_period(1974,1) {TimezonePeriod.new(128142000,136605600,-10800,3600,:ARST)}
add_period(1974,5) {TimezonePeriod.new(136605600,596948400,-10800,0,:ART)}
add_period(1988,12) {TimezonePeriod.new(596948400,605066400,-10800,3600,:ARST)}
add_period(1989,3) {TimezonePeriod.new(605066400,624423600,-10800,0,:ART)}
add_period(1989,10) {TimezonePeriod.new(624423600,636516000,-10800,3600,:ARST)}
add_period(1990,3) {TimezonePeriod.new(636516000,656478000,-10800,0,:ART)}
add_period(1990,10) {TimezonePeriod.new(656478000,667792800,-10800,3600,:ARST)}
add_period(1991,3) {TimezonePeriod.new(667792800,673588800,-14400,0,:WART)}
add_period(1991,5) {TimezonePeriod.new(673588800,687927600,-10800,0,:ART)}
add_period(1991,10) {TimezonePeriod.new(687927600,699415200,-10800,3600,:ARST)}
add_period(1992,3) {TimezonePeriod.new(699415200,719377200,-10800,0,:ART)}
add_period(1992,10) {TimezonePeriod.new(719377200,731469600,-10800,3600,:ARST)}
add_period(1993,3) {TimezonePeriod.new(731469600,938919600,-10800,0,:ART)}
add_period(1999,10) {TimezonePeriod.new(938919600,952052400,-14400,3600,:ARST)}
add_period(2000,3) {TimezonePeriod.new(952052400,1085972400,-10800,0,:ART)}
add_period(2004,5) {TimezonePeriod.new(1085972400,1090728000,-14400,0,:WART)}
add_period(2004,7) {TimezonePeriod.new(1090728000,nil,-10800,0,:ART)}
end
end
end
end
end
