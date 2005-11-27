require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Bahia < Timezone #:nodoc:
setup
set_identifier('America/Bahia')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52274885911,21600),0,Date::ITALY),-9244,0,:'LMT')}
add_period(1914,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52274885911,21600),0,Date::ITALY),DateTime.new0(Rational.new!(29119417,12),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29119417,12),0,Date::ITALY),DateTime.new0(Rational.new!(29121583,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1932,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29121583,12),0,Date::ITALY),DateTime.new0(Rational.new!(19415869,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19415869,8),0,Date::ITALY),DateTime.new0(Rational.new!(29125963,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29125963,12),0,Date::ITALY),DateTime.new0(Rational.new!(19466013,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19466013,8),0,Date::ITALY),DateTime.new0(Rational.new!(19467101,8),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(19467101,8),0,Date::ITALY),DateTime.new0(Rational.new!(19468933,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1950,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19468933,8),0,Date::ITALY),DateTime.new0(Rational.new!(29204851,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29204851,12),0,Date::ITALY),DateTime.new0(Rational.new!(19471853,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19471853,8),0,Date::ITALY),DateTime.new0(Rational.new!(29209243,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29209243,12),0,Date::ITALY),DateTime.new0(Rational.new!(19474781,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1952,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19474781,8),0,Date::ITALY),DateTime.new0(Rational.new!(29213251,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1953,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29213251,12),0,Date::ITALY),DateTime.new0(Rational.new!(19506981,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19506981,8),0,Date::ITALY),DateTime.new0(Rational.new!(29261467,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29261467,12),0,Date::ITALY),DateTime.new0(Rational.new!(19510333,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19510333,8),0,Date::ITALY),DateTime.new0(Rational.new!(29266207,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29266207,12),0,Date::ITALY),DateTime.new0(Rational.new!(19512765,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1965,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19512765,8),0,Date::ITALY),DateTime.new0(Rational.new!(29270227,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1966,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29270227,12),0,Date::ITALY),DateTime.new0(Rational.new!(19515445,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1966,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(19515445,8),0,Date::ITALY),DateTime.new0(Rational.new!(29274607,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1967,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29274607,12),0,Date::ITALY),DateTime.new0(Rational.new!(19518365,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1967,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(19518365,8),0,Date::ITALY),DateTime.new0(Rational.new!(29278999,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1968,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29278999,12),0,Date::ITALY),DateTime.new0(Rational.new!(19570973,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1985,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(19570973,8),0,Date::ITALY),DateTime.new0(Rational.new!(29358055,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29358055,12),0,Date::ITALY),DateTime.new0(Rational.new!(19573829,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1986,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19573829,8),0,Date::ITALY),DateTime.new0(Rational.new!(29362087,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1987,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29362087,12),0,Date::ITALY),DateTime.new0(Rational.new!(19576749,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1987,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19576749,8),0,Date::ITALY),DateTime.new0(Rational.new!(29366383,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1988,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29366383,12),0,Date::ITALY),DateTime.new0(Rational.new!(19579605,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1988,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19579605,8),0,Date::ITALY),DateTime.new0(Rational.new!(29370667,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1989,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29370667,12),0,Date::ITALY),DateTime.new0(Rational.new!(19582517,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1989,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19582517,8),0,Date::ITALY),DateTime.new0(Rational.new!(29375203,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1990,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29375203,12),0,Date::ITALY),DateTime.new0(Rational.new!(19585485,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1990,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19585485,8),0,Date::ITALY),DateTime.new0(Rational.new!(29379655,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1991,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29379655,12),0,Date::ITALY),DateTime.new0(Rational.new!(19588397,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1991,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19588397,8),0,Date::ITALY),DateTime.new0(Rational.new!(29383939,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1992,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29383939,12),0,Date::ITALY),DateTime.new0(Rational.new!(19591365,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1992,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19591365,8),0,Date::ITALY),DateTime.new0(Rational.new!(29388223,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1993,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29388223,12),0,Date::ITALY),DateTime.new0(Rational.new!(19594221,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1993,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19594221,8),0,Date::ITALY),DateTime.new0(Rational.new!(29392843,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1994,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29392843,12),0,Date::ITALY),DateTime.new0(Rational.new!(19597133,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1994,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19597133,8),0,Date::ITALY),DateTime.new0(Rational.new!(29397211,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1995,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29397211,12),0,Date::ITALY),DateTime.new0(Rational.new!(19600045,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1995,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19600045,8),0,Date::ITALY),DateTime.new0(Rational.new!(29401495,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1996,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29401495,12),0,Date::ITALY),DateTime.new0(Rational.new!(19602901,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1996,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19602901,8),0,Date::ITALY),DateTime.new0(Rational.new!(29405947,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1997,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29405947,12),0,Date::ITALY),DateTime.new0(Rational.new!(19605821,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19605821,8),0,Date::ITALY),DateTime.new0(Rational.new!(29410483,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29410483,12),0,Date::ITALY),DateTime.new0(Rational.new!(19608781,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19608781,8),0,Date::ITALY),DateTime.new0(Rational.new!(29414767,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(1999,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29414767,12),0,Date::ITALY),DateTime.new0(Rational.new!(19611637,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19611637,8),0,Date::ITALY),DateTime.new0(Rational.new!(29419219,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(2000,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29419219,12),0,Date::ITALY),DateTime.new0(Rational.new!(19614605,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19614605,8),0,Date::ITALY),DateTime.new0(Rational.new!(29423503,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(2001,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29423503,12),0,Date::ITALY),DateTime.new0(Rational.new!(19617573,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19617573,8),0,Date::ITALY),DateTime.new0(Rational.new!(29427871,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(2002,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29427871,12),0,Date::ITALY),DateTime.new0(Rational.new!(19620653,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(2002,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(19620653,8),0,Date::ITALY),DateTime.new0(Rational.new!(29432239,12),0,Date::ITALY),-10800,3600,:'BRST')}
add_period(2003,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29432239,12),0,Date::ITALY),DateTime.new0(Rational.new!(19623253,8),0,Date::ITALY),-10800,0,:'BRT')}
add_period(2003,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19623253,8),0,Date::ITALY),nil,-10800,0,:'BRT')}
end
end
end
end
