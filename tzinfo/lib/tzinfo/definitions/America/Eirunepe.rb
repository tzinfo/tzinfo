require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Eirunepe < Timezone #:nodoc:
setup
set_identifier('America/Eirunepe')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3267180487,1350),0,Date::ITALY),-16768,0,:'LMT')}
add_period(1914,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(3267180487,1350),0,Date::ITALY),DateTime.new0(Rational.new!(14559709,6),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(14559709,6),0,Date::ITALY),DateTime.new0(Rational.new!(7280396,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1932,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7280396,3),0,Date::ITALY),DateTime.new0(Rational.new!(58247609,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58247609,24),0,Date::ITALY),DateTime.new0(Rational.new!(7281491,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7281491,3),0,Date::ITALY),DateTime.new0(Rational.new!(58398041,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58398041,24),0,Date::ITALY),DateTime.new0(Rational.new!(58401305,24),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58401305,24),0,Date::ITALY),DateTime.new0(Rational.new!(58406801,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1950,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58406801,24),0,Date::ITALY),DateTime.new0(Rational.new!(7301213,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7301213,3),0,Date::ITALY),DateTime.new0(Rational.new!(58415561,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58415561,24),0,Date::ITALY),DateTime.new0(Rational.new!(7302311,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7302311,3),0,Date::ITALY),DateTime.new0(Rational.new!(58424345,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1952,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58424345,24),0,Date::ITALY),DateTime.new0(Rational.new!(7303313,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1953,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7303313,3),0,Date::ITALY),DateTime.new0(Rational.new!(58520945,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58520945,24),0,Date::ITALY),DateTime.new0(Rational.new!(7315367,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7315367,3),0,Date::ITALY),DateTime.new0(Rational.new!(58531001,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58531001,24),0,Date::ITALY),DateTime.new0(Rational.new!(7316552,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7316552,3),0,Date::ITALY),DateTime.new0(Rational.new!(58538297,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1965,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58538297,24),0,Date::ITALY),DateTime.new0(Rational.new!(7317557,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1966,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7317557,3),0,Date::ITALY),DateTime.new0(Rational.new!(58546337,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1966,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58546337,24),0,Date::ITALY),DateTime.new0(Rational.new!(7318652,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1967,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7318652,3),0,Date::ITALY),DateTime.new0(Rational.new!(58555097,24),0,Date::ITALY),-18000,0,:'ACT')}
add_period(1967,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58555097,24),0,Date::ITALY),DateTime.new0(Rational.new!(7319750,3),0,Date::ITALY),-18000,3600,:'ACST')}
add_period(1968,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7319750,3),0,Date::ITALY),499755600,-18000,0,:'ACT')}
add_period(1985,11) {TimezonePeriod.new(499755600,511243200,-18000,3600,:'ACST')}
add_period(1986,3) {TimezonePeriod.new(511243200,530600400,-18000,0,:'ACT')}
add_period(1986,10) {TimezonePeriod.new(530600400,540273600,-18000,3600,:'ACST')}
add_period(1987,2) {TimezonePeriod.new(540273600,562136400,-18000,0,:'ACT')}
add_period(1987,10) {TimezonePeriod.new(562136400,571204800,-18000,3600,:'ACST')}
add_period(1988,2) {TimezonePeriod.new(571204800,590043600,-18000,0,:'ACT')}
add_period(1988,9) {TimezonePeriod.new(590043600,749192400,-18000,0,:'ACT')}
add_period(1993,9) {TimezonePeriod.new(749192400,750834000,-18000,0,:'ACT')}
add_period(1993,10) {TimezonePeriod.new(750834000,761716800,-18000,3600,:'ACST')}
add_period(1994,2) {TimezonePeriod.new(761716800,780210000,-18000,0,:'ACT')}
add_period(1994,9) {TimezonePeriod.new(780210000,nil,-18000,0,:'ACT')}
end
end
end
end
