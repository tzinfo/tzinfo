require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Dawson_Creek < Timezone #:nodoc:
setup
set_identifier('America/Dawson_Creek')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26019109807,10800),0,Date::ITALY),-28856,0,:LMT)}
add_period(1884,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26019109807,10800),0,Date::ITALY),DateTime.new0(Rational.new!(29060375,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1918,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29060375,12),0,Date::ITALY),DateTime.new0(Rational.new!(19375183,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19375183,8),0,Date::ITALY),DateTime.new0(Rational.new!(29164799,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29164799,12),0,Date::ITALY),DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),-28800,3600,:PWT)}
add_period(1945,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58360379,24),0,Date::ITALY),DateTime.new0(Rational.new!(19453831,8),0,Date::ITALY),-28800,3600,:PPT)}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453831,8),0,Date::ITALY),DateTime.new0(Rational.new!(29187635,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1947,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29187635,12),0,Date::ITALY),DateTime.new0(Rational.new!(19459655,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1947,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19459655,8),0,Date::ITALY),DateTime.new0(Rational.new!(29192003,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29192003,12),0,Date::ITALY),DateTime.new0(Rational.new!(19462567,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1948,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19462567,8),0,Date::ITALY),DateTime.new0(Rational.new!(29196371,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29196371,12),0,Date::ITALY),DateTime.new0(Rational.new!(19465479,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1949,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19465479,8),0,Date::ITALY),DateTime.new0(Rational.new!(29200823,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29200823,12),0,Date::ITALY),DateTime.new0(Rational.new!(19468391,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1950,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19468391,8),0,Date::ITALY),DateTime.new0(Rational.new!(29205191,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29205191,12),0,Date::ITALY),DateTime.new0(Rational.new!(19471359,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1951,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19471359,8),0,Date::ITALY),DateTime.new0(Rational.new!(29209559,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29209559,12),0,Date::ITALY),DateTime.new0(Rational.new!(19474271,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1952,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19474271,8),0,Date::ITALY),DateTime.new0(Rational.new!(29213927,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1953,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29213927,12),0,Date::ITALY),DateTime.new0(Rational.new!(19477183,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1953,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19477183,8),0,Date::ITALY),DateTime.new0(Rational.new!(29218295,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1954,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29218295,12),0,Date::ITALY),DateTime.new0(Rational.new!(19480095,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1954,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19480095,8),0,Date::ITALY),DateTime.new0(Rational.new!(29222663,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1955,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29222663,12),0,Date::ITALY),DateTime.new0(Rational.new!(19483007,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1955,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19483007,8),0,Date::ITALY),DateTime.new0(Rational.new!(29227115,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1956,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29227115,12),0,Date::ITALY),DateTime.new0(Rational.new!(19485975,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1956,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19485975,8),0,Date::ITALY),DateTime.new0(Rational.new!(29231483,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1957,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29231483,12),0,Date::ITALY),DateTime.new0(Rational.new!(19488887,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1957,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19488887,8),0,Date::ITALY),DateTime.new0(Rational.new!(29235851,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1958,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29235851,12),0,Date::ITALY),DateTime.new0(Rational.new!(19491799,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1958,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19491799,8),0,Date::ITALY),DateTime.new0(Rational.new!(29240219,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1959,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29240219,12),0,Date::ITALY),DateTime.new0(Rational.new!(19494711,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1959,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19494711,8),0,Date::ITALY),DateTime.new0(Rational.new!(29244587,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1960,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29244587,12),0,Date::ITALY),DateTime.new0(Rational.new!(19497623,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1960,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19497623,8),0,Date::ITALY),DateTime.new0(Rational.new!(29249039,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1961,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29249039,12),0,Date::ITALY),DateTime.new0(Rational.new!(19500535,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1961,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19500535,8),0,Date::ITALY),DateTime.new0(Rational.new!(29253407,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1962,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29253407,12),0,Date::ITALY),DateTime.new0(Rational.new!(19503727,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1962,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19503727,8),0,Date::ITALY),DateTime.new0(Rational.new!(29257775,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1963,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29257775,12),0,Date::ITALY),DateTime.new0(Rational.new!(19506639,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1963,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19506639,8),0,Date::ITALY),DateTime.new0(Rational.new!(29262143,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1964,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29262143,12),0,Date::ITALY),DateTime.new0(Rational.new!(19509551,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19509551,8),0,Date::ITALY),DateTime.new0(Rational.new!(29266511,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1965,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29266511,12),0,Date::ITALY),DateTime.new0(Rational.new!(19512519,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1965,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19512519,8),0,Date::ITALY),DateTime.new0(Rational.new!(29270879,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1966,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29270879,12),0,Date::ITALY),DateTime.new0(Rational.new!(19515431,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19515431,8),0,Date::ITALY),DateTime.new0(Rational.new!(29275331,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29275331,12),0,Date::ITALY),DateTime.new0(Rational.new!(19518343,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19518343,8),0,Date::ITALY),DateTime.new0(Rational.new!(29279699,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1968,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29279699,12),0,Date::ITALY),DateTime.new0(Rational.new!(19521255,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1968,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19521255,8),0,Date::ITALY),DateTime.new0(Rational.new!(29284067,12),0,Date::ITALY),-28800,0,:PST)}
add_period(1969,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29284067,12),0,Date::ITALY),DateTime.new0(Rational.new!(19524167,8),0,Date::ITALY),-28800,3600,:PDT)}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19524167,8),0,Date::ITALY),9972000,-28800,0,:PST)}
add_period(1970,4) {TimezonePeriod.new(9972000,25693200,-28800,3600,:PDT)}
add_period(1970,10) {TimezonePeriod.new(25693200,41421600,-28800,0,:PST)}
add_period(1971,4) {TimezonePeriod.new(41421600,57747600,-28800,3600,:PDT)}
add_period(1971,10) {TimezonePeriod.new(57747600,73476000,-28800,0,:PST)}
add_period(1972,4) {TimezonePeriod.new(73476000,84013200,-28800,3600,:PDT)}
add_period(1972,8) {TimezonePeriod.new(84013200,nil,-25200,0,:MST)}
end
end
end
end
