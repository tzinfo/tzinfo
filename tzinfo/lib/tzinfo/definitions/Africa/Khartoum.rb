require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Khartoum < Timezone #:nodoc:
setup
set_identifier('Africa/Khartoum')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3275562253,1350),0,Date::ITALY),7808,0,:'LMT')}
add_period(1930,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3275562253,1350),0,Date::ITALY),DateTime.new0(Rational.new!(29288489,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1970,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29288489,12),0,Date::ITALY),DateTime.new0(Rational.new!(19526995,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1970,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19526995,8),0,Date::ITALY),DateTime.new0(Rational.new!(29292857,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1971,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29292857,12),0,Date::ITALY),DateTime.new0(Rational.new!(19529915,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1971,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19529915,8),0,Date::ITALY),DateTime.new0(Rational.new!(29297249,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1972,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29297249,12),0,Date::ITALY),DateTime.new0(Rational.new!(19532843,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1972,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19532843,8),0,Date::ITALY),DateTime.new0(Rational.new!(29301617,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1973,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29301617,12),0,Date::ITALY),DateTime.new0(Rational.new!(19535763,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1973,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19535763,8),0,Date::ITALY),DateTime.new0(Rational.new!(29305985,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1974,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29305985,12),0,Date::ITALY),DateTime.new0(Rational.new!(19538683,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1974,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19538683,8),0,Date::ITALY),DateTime.new0(Rational.new!(29310353,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1975,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29310353,12),0,Date::ITALY),DateTime.new0(Rational.new!(19541603,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1975,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19541603,8),0,Date::ITALY),DateTime.new0(Rational.new!(29314721,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1976,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29314721,12),0,Date::ITALY),DateTime.new0(Rational.new!(19544531,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1976,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19544531,8),0,Date::ITALY),DateTime.new0(Rational.new!(29319089,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1977,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29319089,12),0,Date::ITALY),DateTime.new0(Rational.new!(19547451,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1977,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19547451,8),0,Date::ITALY),DateTime.new0(Rational.new!(29323541,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1978,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29323541,12),0,Date::ITALY),DateTime.new0(Rational.new!(19550371,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1978,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19550371,8),0,Date::ITALY),DateTime.new0(Rational.new!(29327909,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1979,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29327909,12),0,Date::ITALY),DateTime.new0(Rational.new!(19553291,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1979,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19553291,8),0,Date::ITALY),DateTime.new0(Rational.new!(29332277,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29332277,12),0,Date::ITALY),DateTime.new0(Rational.new!(19556219,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1980,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19556219,8),0,Date::ITALY),DateTime.new0(Rational.new!(29336645,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1981,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29336645,12),0,Date::ITALY),DateTime.new0(Rational.new!(19559139,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1981,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19559139,8),0,Date::ITALY),DateTime.new0(Rational.new!(29341013,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1982,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29341013,12),0,Date::ITALY),DateTime.new0(Rational.new!(19562059,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1982,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19562059,8),0,Date::ITALY),DateTime.new0(Rational.new!(29345381,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1983,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29345381,12),0,Date::ITALY),DateTime.new0(Rational.new!(19564979,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1983,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19564979,8),0,Date::ITALY),DateTime.new0(Rational.new!(29349833,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1984,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29349833,12),0,Date::ITALY),DateTime.new0(Rational.new!(19567907,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1984,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19567907,8),0,Date::ITALY),DateTime.new0(Rational.new!(29354201,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(1985,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29354201,12),0,Date::ITALY),DateTime.new0(Rational.new!(19570827,8),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1985,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570827,8),0,Date::ITALY),DateTime.new0(Rational.new!(29418707,12),0,Date::ITALY),7200,0,:'CAT')}
add_period(2000,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29418707,12),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
