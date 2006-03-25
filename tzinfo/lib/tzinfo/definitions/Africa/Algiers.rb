require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Algiers < Timezone #:nodoc:
setup
set_identifier('Africa/Algiers')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2170625843,900),0,Date::ITALY),732,0,:'LMT')}
add_period(1891,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2170625843,900),0,Date::ITALY),DateTime.new0(Rational.new!(69670267013,28800),0,Date::ITALY),561,0,:'PMT')}
add_period(1911,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(69670267013,28800),0,Date::ITALY),DateTime.new0(Rational.new!(58104707,24),0,Date::ITALY),0,0,:'WET')}
add_period(1916,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58104707,24),0,Date::ITALY),DateTime.new0(Rational.new!(58107323,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1916,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58107323,24),0,Date::ITALY),DateTime.new0(Rational.new!(58111499,24),0,Date::ITALY),0,0,:'WET')}
add_period(1917,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58111499,24),0,Date::ITALY),DateTime.new0(Rational.new!(58116227,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1917,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58116227,24),0,Date::ITALY),DateTime.new0(Rational.new!(58119899,24),0,Date::ITALY),0,0,:'WET')}
add_period(1918,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58119899,24),0,Date::ITALY),DateTime.new0(Rational.new!(58124963,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58124963,24),0,Date::ITALY),DateTime.new0(Rational.new!(58128467,24),0,Date::ITALY),0,0,:'WET')}
add_period(1919,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58128467,24),0,Date::ITALY),DateTime.new0(Rational.new!(58133699,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1919,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58133699,24),0,Date::ITALY),DateTime.new0(Rational.new!(58136867,24),0,Date::ITALY),0,0,:'WET')}
add_period(1920,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58136867,24),0,Date::ITALY),DateTime.new0(Rational.new!(58142915,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1920,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58142915,24),0,Date::ITALY),DateTime.new0(Rational.new!(58146323,24),0,Date::ITALY),0,0,:'WET')}
add_period(1921,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58146323,24),0,Date::ITALY),DateTime.new0(Rational.new!(58148699,24),0,Date::ITALY),0,3600,:'WEST')}
add_period(1921,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58148699,24),0,Date::ITALY),DateTime.new0(Rational.new!(58308443,24),0,Date::ITALY),0,0,:'WET')}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58308443,24),0,Date::ITALY),DateTime.new0(Rational.new!(4859173,2),0,Date::ITALY),0,3600,:'WEST')}
add_period(1939,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(4859173,2),0,Date::ITALY),DateTime.new0(Rational.new!(29156215,12),0,Date::ITALY),0,0,:'WET')}
add_period(1940,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29156215,12),0,Date::ITALY),DateTime.new0(Rational.new!(58348405,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1944,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58348405,24),0,Date::ITALY),DateTime.new0(Rational.new!(4862743,2),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1944,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(4862743,2),0,Date::ITALY),DateTime.new0(Rational.new!(58357141,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1945,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58357141,24),0,Date::ITALY),DateTime.new0(Rational.new!(58361147,24),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58361147,24),0,Date::ITALY),DateTime.new0(Rational.new!(58370411,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1946,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58370411,24),0,Date::ITALY),DateTime.new0(Rational.new!(4871003,2),0,Date::ITALY),0,0,:'WET')}
add_period(1956,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4871003,2),0,Date::ITALY),DateTime.new0(Rational.new!(58515203,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1963,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58515203,24),0,Date::ITALY),41468400,0,0,:'WET')}
add_period(1971,4) {TimezonePeriod.new(41468400,54774000,0,3600,:'WEST')}
add_period(1971,9) {TimezonePeriod.new(54774000,231724800,0,0,:'WET')}
add_period(1977,5) {TimezonePeriod.new(231724800,246236400,0,3600,:'WEST')}
add_period(1977,10) {TimezonePeriod.new(246236400,259545600,3600,0,:'CET')}
add_period(1978,3) {TimezonePeriod.new(259545600,275274000,3600,3600,:'CEST')}
add_period(1978,9) {TimezonePeriod.new(275274000,309740400,3600,0,:'CET')}
add_period(1979,10) {TimezonePeriod.new(309740400,325468800,0,0,:'WET')}
add_period(1980,4) {TimezonePeriod.new(325468800,341802000,0,3600,:'WEST')}
add_period(1980,10) {TimezonePeriod.new(341802000,357523200,0,0,:'WET')}
add_period(1981,5) {TimezonePeriod.new(357523200,nil,3600,0,:'CET')}
end
end
end
end
