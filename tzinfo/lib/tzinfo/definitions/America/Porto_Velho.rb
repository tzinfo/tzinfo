require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Porto_Velho < Timezone #:nodoc:
setup
set_identifier('America/Porto_Velho')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(968053471,400),0,Date::ITALY),-15336,0,:'LMT')}
add_period(1914,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(968053471,400),0,Date::ITALY),DateTime.new0(Rational.new!(19412945,8),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19412945,8),0,Date::ITALY),DateTime.new0(Rational.new!(19414389,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1932,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19414389,8),0,Date::ITALY),DateTime.new0(Rational.new!(7280951,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7280951,3),0,Date::ITALY),DateTime.new0(Rational.new!(19417309,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19417309,8),0,Date::ITALY),DateTime.new0(Rational.new!(7299755,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7299755,3),0,Date::ITALY),DateTime.new0(Rational.new!(7300163,3),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7300163,3),0,Date::ITALY),DateTime.new0(Rational.new!(7300850,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1950,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7300850,3),0,Date::ITALY),DateTime.new0(Rational.new!(19469901,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19469901,8),0,Date::ITALY),DateTime.new0(Rational.new!(7301945,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7301945,3),0,Date::ITALY),DateTime.new0(Rational.new!(19472829,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19472829,8),0,Date::ITALY),DateTime.new0(Rational.new!(7303043,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1952,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7303043,3),0,Date::ITALY),DateTime.new0(Rational.new!(19475501,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1953,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19475501,8),0,Date::ITALY),DateTime.new0(Rational.new!(7315118,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7315118,3),0,Date::ITALY),DateTime.new0(Rational.new!(19507645,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19507645,8),0,Date::ITALY),DateTime.new0(Rational.new!(7316375,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(7316375,3),0,Date::ITALY),DateTime.new0(Rational.new!(19510805,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19510805,8),0,Date::ITALY),DateTime.new0(Rational.new!(7317287,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1965,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7317287,3),0,Date::ITALY),DateTime.new0(Rational.new!(19513485,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1966,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19513485,8),0,Date::ITALY),DateTime.new0(Rational.new!(7318292,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1966,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7318292,3),0,Date::ITALY),DateTime.new0(Rational.new!(19516405,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1967,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19516405,8),0,Date::ITALY),DateTime.new0(Rational.new!(7319387,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1967,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7319387,3),0,Date::ITALY),DateTime.new0(Rational.new!(19519333,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1968,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19519333,8),0,Date::ITALY),DateTime.new0(Rational.new!(7339115,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1985,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7339115,3),0,Date::ITALY),DateTime.new0(Rational.new!(19572037,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19572037,8),0,Date::ITALY),DateTime.new0(Rational.new!(7340186,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1986,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7340186,3),0,Date::ITALY),DateTime.new0(Rational.new!(19574725,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1987,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19574725,8),0,Date::ITALY),DateTime.new0(Rational.new!(7341281,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1987,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(7341281,3),0,Date::ITALY),DateTime.new0(Rational.new!(19577589,8),0,Date::ITALY),-14400,3600,:'AMST')}
add_period(1988,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19577589,8),0,Date::ITALY),DateTime.new0(Rational.new!(7342250,3),0,Date::ITALY),-14400,0,:'AMT')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7342250,3),0,Date::ITALY),nil,-14400,0,:'AMT')}
end
end
end
end
