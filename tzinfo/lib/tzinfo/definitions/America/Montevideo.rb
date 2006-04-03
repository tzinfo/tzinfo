require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Montevideo < Timezone #:nodoc:
setup
set_identifier('America/Montevideo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52152522971,21600),0,Date::ITALY),-13484,0,:LMT)}
add_period(1898,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(52152522971,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52324826171,21600),0,Date::ITALY),-13484,0,:MMT)}
add_period(1920,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52324826171,21600),0,Date::ITALY),DateTime.new0(Rational.new!(116337343,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1923,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116337343,48),0,Date::ITALY),DateTime.new0(Rational.new!(19391013,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1924,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19391013,8),0,Date::ITALY),DateTime.new0(Rational.new!(116354863,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1924,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116354863,48),0,Date::ITALY),DateTime.new0(Rational.new!(19393933,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1925,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19393933,8),0,Date::ITALY),DateTime.new0(Rational.new!(116372383,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1925,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116372383,48),0,Date::ITALY),DateTime.new0(Rational.new!(19396853,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1926,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19396853,8),0,Date::ITALY),DateTime.new0(Rational.new!(116513983,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1933,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116513983,48),0,Date::ITALY),DateTime.new0(Rational.new!(19420229,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1934,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19420229,8),0,Date::ITALY),DateTime.new0(Rational.new!(116531455,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1934,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116531455,48),0,Date::ITALY),DateTime.new0(Rational.new!(19423141,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1935,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19423141,8),0,Date::ITALY),DateTime.new0(Rational.new!(116548927,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1935,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116548927,48),0,Date::ITALY),DateTime.new0(Rational.new!(19426053,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1936,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19426053,8),0,Date::ITALY),DateTime.new0(Rational.new!(116566735,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1936,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(116566735,48),0,Date::ITALY),DateTime.new0(Rational.new!(19428965,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1937,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19428965,8),0,Date::ITALY),DateTime.new0(Rational.new!(116584207,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1937,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116584207,48),0,Date::ITALY),DateTime.new0(Rational.new!(19431877,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1938,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19431877,8),0,Date::ITALY),DateTime.new0(Rational.new!(116601679,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1938,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116601679,48),0,Date::ITALY),DateTime.new0(Rational.new!(19434789,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1939,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19434789,8),0,Date::ITALY),DateTime.new0(Rational.new!(116619151,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1939,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116619151,48),0,Date::ITALY),DateTime.new0(Rational.new!(19437757,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1940,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19437757,8),0,Date::ITALY),DateTime.new0(Rational.new!(116636623,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1940,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(116636623,48),0,Date::ITALY),DateTime.new0(Rational.new!(19440669,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1941,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19440669,8),0,Date::ITALY),DateTime.new0(Rational.new!(116649967,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1941,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(116649967,48),0,Date::ITALY),DateTime.new0(Rational.new!(19442885,8),0,Date::ITALY),-12600,1800,:UYHST)}
add_period(1942,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19442885,8),0,Date::ITALY),DateTime.new0(Rational.new!(116673967,48),0,Date::ITALY),-12600,0,:UYT)}
add_period(1942,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(116673967,48),0,Date::ITALY),DateTime.new0(Rational.new!(29169571,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29169571,12),0,Date::ITALY),DateTime.new0(Rational.new!(19493701,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1959,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19493701,8),0,Date::ITALY),DateTime.new0(Rational.new!(29242651,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1959,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29242651,12),0,Date::ITALY),DateTime.new0(Rational.new!(19495605,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1960,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19495605,8),0,Date::ITALY),DateTime.new0(Rational.new!(29243995,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1960,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29243995,12),0,Date::ITALY),DateTime.new0(Rational.new!(19510837,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1965,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19510837,8),0,Date::ITALY),DateTime.new0(Rational.new!(29268355,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1965,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29268355,12),0,Date::ITALY),DateTime.new0(Rational.new!(19513749,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1966,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19513749,8),0,Date::ITALY),DateTime.new0(Rational.new!(29273155,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29273155,12),0,Date::ITALY),DateTime.new0(Rational.new!(19516661,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19516661,8),0,Date::ITALY),DateTime.new0(Rational.new!(29277535,12),0,Date::ITALY),-10800,3600,:UYST)}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29277535,12),0,Date::ITALY),DateTime.new0(Rational.new!(19520029,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1968,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19520029,8),0,Date::ITALY),DateTime.new0(Rational.new!(117129245,48),0,Date::ITALY),-10800,1800,:UYHST)}
add_period(1968,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(117129245,48),0,Date::ITALY),DateTime.new0(Rational.new!(19522949,8),0,Date::ITALY),-10800,0,:UYT)}
add_period(1969,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19522949,8),0,Date::ITALY),DateTime.new0(Rational.new!(117146765,48),0,Date::ITALY),-10800,1800,:UYHST)}
add_period(1969,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(117146765,48),0,Date::ITALY),12625200,-10800,0,:UYT)}
add_period(1970,5) {TimezonePeriod.new(12625200,28953000,-10800,1800,:UYHST)}
add_period(1970,12) {TimezonePeriod.new(28953000,72932400,-10800,0,:UYT)}
add_period(1972,4) {TimezonePeriod.new(72932400,82692000,-10800,3600,:UYST)}
add_period(1972,8) {TimezonePeriod.new(82692000,132116400,-10800,0,:UYT)}
add_period(1974,3) {TimezonePeriod.new(132116400,156911400,-10800,1800,:UYHST)}
add_period(1974,12) {TimezonePeriod.new(156911400,212983200,-10800,3600,:UYST)}
add_period(1976,10) {TimezonePeriod.new(212983200,250052400,-10800,0,:UYT)}
add_period(1977,12) {TimezonePeriod.new(250052400,260244000,-10800,3600,:UYST)}
add_period(1978,4) {TimezonePeriod.new(260244000,307594800,-10800,0,:UYT)}
add_period(1979,10) {TimezonePeriod.new(307594800,325994400,-10800,3600,:UYST)}
add_period(1980,5) {TimezonePeriod.new(325994400,566449200,-10800,0,:UYT)}
add_period(1987,12) {TimezonePeriod.new(566449200,574308000,-10800,3600,:UYST)}
add_period(1988,3) {TimezonePeriod.new(574308000,597812400,-10800,0,:UYT)}
add_period(1988,12) {TimezonePeriod.new(597812400,605671200,-10800,3600,:UYST)}
add_period(1989,3) {TimezonePeriod.new(605671200,625633200,-10800,0,:UYT)}
add_period(1989,10) {TimezonePeriod.new(625633200,636516000,-10800,3600,:UYST)}
add_period(1990,3) {TimezonePeriod.new(636516000,656478000,-10800,0,:UYT)}
add_period(1990,10) {TimezonePeriod.new(656478000,667965600,-10800,3600,:UYST)}
add_period(1991,3) {TimezonePeriod.new(667965600,688532400,-10800,0,:UYT)}
add_period(1991,10) {TimezonePeriod.new(688532400,699415200,-10800,3600,:UYST)}
add_period(1992,3) {TimezonePeriod.new(699415200,719377200,-10800,0,:UYT)}
add_period(1992,10) {TimezonePeriod.new(719377200,730864800,-10800,3600,:UYST)}
add_period(1993,2) {TimezonePeriod.new(730864800,1095562800,-10800,0,:UYT)}
add_period(2004,9) {TimezonePeriod.new(1095562800,1111896000,-10800,3600,:UYST)}
add_period(2005,3) {TimezonePeriod.new(1111896000,1128834000,-10800,0,:UYT)}
add_period(2005,10) {TimezonePeriod.new(1128834000,1142136000,-10800,3600,:UYST)}
add_period(2006,3) {TimezonePeriod.new(1142136000,nil,-10800,0,:UYT)}
end
end
end
end
