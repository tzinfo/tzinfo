require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class Reykjavik < Timezone #:nodoc:
setup
set_identifier('Atlantic/Reykjavik')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17222476037,7200),0,Date::ITALY),-5244,0,:LMT)}
add_period(1837,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17222476037,7200),0,Date::ITALY),DateTime.new0(Rational.new!(17409179239,7200),0,Date::ITALY),-5268,0,:RMT)}
add_period(1908,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17409179239,7200),0,Date::ITALY),DateTime.new0(Rational.new!(4842559,2),0,Date::ITALY),-3600,0,:IST)}
add_period(1917,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4842559,2),0,Date::ITALY),DateTime.new0(Rational.new!(58116541,24),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1917,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58116541,24),0,Date::ITALY),DateTime.new0(Rational.new!(4843289,2),0,Date::ITALY),-3600,0,:IST)}
add_period(1918,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4843289,2),0,Date::ITALY),DateTime.new0(Rational.new!(58125925,24),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1918,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58125925,24),0,Date::ITALY),DateTime.new0(Rational.new!(4858767,2),0,Date::ITALY),-3600,0,:IST)}
add_period(1939,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(4858767,2),0,Date::ITALY),DateTime.new0(Rational.new!(29155159,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1939,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29155159,12),0,Date::ITALY),DateTime.new0(Rational.new!(19437477,8),0,Date::ITALY),-3600,0,:IST)}
add_period(1940,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19437477,8),0,Date::ITALY),DateTime.new0(Rational.new!(29159239,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1940,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29159239,12),0,Date::ITALY),DateTime.new0(Rational.new!(29160667,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1941,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29160667,12),0,Date::ITALY),DateTime.new0(Rational.new!(29163607,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1941,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29163607,12),0,Date::ITALY),DateTime.new0(Rational.new!(29165119,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29165119,12),0,Date::ITALY),DateTime.new0(Rational.new!(29167891,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1942,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29167891,12),0,Date::ITALY),DateTime.new0(Rational.new!(29169487,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29169487,12),0,Date::ITALY),DateTime.new0(Rational.new!(29172259,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1943,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29172259,12),0,Date::ITALY),DateTime.new0(Rational.new!(29173855,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29173855,12),0,Date::ITALY),DateTime.new0(Rational.new!(29176627,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1944,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29176627,12),0,Date::ITALY),DateTime.new0(Rational.new!(29178223,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1945,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29178223,12),0,Date::ITALY),DateTime.new0(Rational.new!(29181079,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29181079,12),0,Date::ITALY),DateTime.new0(Rational.new!(29182591,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1946,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29182591,12),0,Date::ITALY),DateTime.new0(Rational.new!(29185447,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1946,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29185447,12),0,Date::ITALY),DateTime.new0(Rational.new!(29187379,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1947,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29187379,12),0,Date::ITALY),DateTime.new0(Rational.new!(29189815,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1947,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29189815,12),0,Date::ITALY),DateTime.new0(Rational.new!(29191747,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29191747,12),0,Date::ITALY),DateTime.new0(Rational.new!(29194183,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1948,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29194183,12),0,Date::ITALY),DateTime.new0(Rational.new!(29196115,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1949,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29196115,12),0,Date::ITALY),DateTime.new0(Rational.new!(29198635,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1949,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29198635,12),0,Date::ITALY),DateTime.new0(Rational.new!(29200483,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29200483,12),0,Date::ITALY),DateTime.new0(Rational.new!(29202919,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1950,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29202919,12),0,Date::ITALY),DateTime.new0(Rational.new!(29204851,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29204851,12),0,Date::ITALY),DateTime.new0(Rational.new!(29207371,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1951,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29207371,12),0,Date::ITALY),DateTime.new0(Rational.new!(29209303,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29209303,12),0,Date::ITALY),DateTime.new0(Rational.new!(29211739,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1952,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29211739,12),0,Date::ITALY),DateTime.new0(Rational.new!(29213671,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1953,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29213671,12),0,Date::ITALY),DateTime.new0(Rational.new!(29216107,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1953,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29216107,12),0,Date::ITALY),DateTime.new0(Rational.new!(29218039,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1954,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29218039,12),0,Date::ITALY),DateTime.new0(Rational.new!(29220475,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1954,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29220475,12),0,Date::ITALY),DateTime.new0(Rational.new!(29222407,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1955,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29222407,12),0,Date::ITALY),DateTime.new0(Rational.new!(29224843,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1955,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29224843,12),0,Date::ITALY),DateTime.new0(Rational.new!(29226775,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1956,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29226775,12),0,Date::ITALY),DateTime.new0(Rational.new!(29229295,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1956,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29229295,12),0,Date::ITALY),DateTime.new0(Rational.new!(29231227,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1957,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29231227,12),0,Date::ITALY),DateTime.new0(Rational.new!(29233663,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1957,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29233663,12),0,Date::ITALY),DateTime.new0(Rational.new!(29235595,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1958,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29235595,12),0,Date::ITALY),DateTime.new0(Rational.new!(29238031,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1958,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29238031,12),0,Date::ITALY),DateTime.new0(Rational.new!(29239963,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1959,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29239963,12),0,Date::ITALY),DateTime.new0(Rational.new!(29242399,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1959,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29242399,12),0,Date::ITALY),DateTime.new0(Rational.new!(29244331,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1960,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29244331,12),0,Date::ITALY),DateTime.new0(Rational.new!(29246767,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1960,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29246767,12),0,Date::ITALY),DateTime.new0(Rational.new!(29248699,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1961,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29248699,12),0,Date::ITALY),DateTime.new0(Rational.new!(29251135,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1961,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29251135,12),0,Date::ITALY),DateTime.new0(Rational.new!(29253067,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1962,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29253067,12),0,Date::ITALY),DateTime.new0(Rational.new!(29255587,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1962,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29255587,12),0,Date::ITALY),DateTime.new0(Rational.new!(29257519,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1963,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29257519,12),0,Date::ITALY),DateTime.new0(Rational.new!(29259955,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1963,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29259955,12),0,Date::ITALY),DateTime.new0(Rational.new!(29261887,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1964,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29261887,12),0,Date::ITALY),DateTime.new0(Rational.new!(29264323,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29264323,12),0,Date::ITALY),DateTime.new0(Rational.new!(29266255,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1965,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29266255,12),0,Date::ITALY),DateTime.new0(Rational.new!(29268691,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1965,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29268691,12),0,Date::ITALY),DateTime.new0(Rational.new!(29270623,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1966,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29270623,12),0,Date::ITALY),DateTime.new0(Rational.new!(29273059,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29273059,12),0,Date::ITALY),DateTime.new0(Rational.new!(29274991,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29274991,12),0,Date::ITALY),DateTime.new0(Rational.new!(29277511,12),0,Date::ITALY),-3600,3600,:ISST)}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29277511,12),0,Date::ITALY),DateTime.new0(Rational.new!(29279443,12),0,Date::ITALY),-3600,0,:IST)}
add_period(1968,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29279443,12),0,Date::ITALY),nil,0,0,:GMT)}
end
end
end
end
