require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Freetown < Timezone #:nodoc:
setup
set_identifier('Africa/Freetown')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3468163013,1440),0,Date::ITALY),-3180,0,:'LMT')}
add_period(1882,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(3468163013,1440),0,Date::ITALY),DateTime.new0(Rational.new!(3484684133,1440),0,Date::ITALY),-3180,0,:'FMT')}
add_period(1913,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(3484684133,1440),0,Date::ITALY),DateTime.new0(Rational.new!(58270909,24),0,Date::ITALY),-3600,0,:'Unknown')}
add_period(1935,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58270909,24),0,Date::ITALY),DateTime.new0(Rational.new!(174821509,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1935,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174821509,72),0,Date::ITALY),DateTime.new0(Rational.new!(58279693,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1936,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58279693,24),0,Date::ITALY),DateTime.new0(Rational.new!(174847861,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1936,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174847861,72),0,Date::ITALY),DateTime.new0(Rational.new!(58288453,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1937,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58288453,24),0,Date::ITALY),DateTime.new0(Rational.new!(174874141,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1937,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174874141,72),0,Date::ITALY),DateTime.new0(Rational.new!(58297213,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1938,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58297213,24),0,Date::ITALY),DateTime.new0(Rational.new!(174900421,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1938,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174900421,72),0,Date::ITALY),DateTime.new0(Rational.new!(58305973,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1939,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58305973,24),0,Date::ITALY),DateTime.new0(Rational.new!(174926701,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1939,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174926701,72),0,Date::ITALY),DateTime.new0(Rational.new!(58314757,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1940,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58314757,24),0,Date::ITALY),DateTime.new0(Rational.new!(174953053,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1940,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174953053,72),0,Date::ITALY),DateTime.new0(Rational.new!(58323517,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1941,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58323517,24),0,Date::ITALY),DateTime.new0(Rational.new!(174979333,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1941,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(174979333,72),0,Date::ITALY),DateTime.new0(Rational.new!(58332277,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1942,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58332277,24),0,Date::ITALY),DateTime.new0(Rational.new!(175005613,72),0,Date::ITALY),-3600,2400,:'SLST')}
add_period(1942,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(175005613,72),0,Date::ITALY),DateTime.new0(Rational.new!(58460149,24),0,Date::ITALY),-3600,0,:'WAT')}
add_period(1957,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58460149,24),0,Date::ITALY),DateTime.new0(Rational.new!(4871981,2),0,Date::ITALY),0,0,:'Unknown')}
add_period(1957,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4871981,2),0,Date::ITALY),DateTime.new0(Rational.new!(58465979,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1957,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58465979,24),0,Date::ITALY),DateTime.new0(Rational.new!(4872711,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1958,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4872711,2),0,Date::ITALY),DateTime.new0(Rational.new!(58474739,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1958,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58474739,24),0,Date::ITALY),DateTime.new0(Rational.new!(4873441,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1959,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4873441,2),0,Date::ITALY),DateTime.new0(Rational.new!(58483499,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1959,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58483499,24),0,Date::ITALY),DateTime.new0(Rational.new!(4874173,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1960,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4874173,2),0,Date::ITALY),DateTime.new0(Rational.new!(58492283,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1960,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58492283,24),0,Date::ITALY),DateTime.new0(Rational.new!(4874903,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1961,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4874903,2),0,Date::ITALY),DateTime.new0(Rational.new!(58501043,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1961,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58501043,24),0,Date::ITALY),DateTime.new0(Rational.new!(4875633,2),0,Date::ITALY),0,0,:'GMT')}
add_period(1962,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(4875633,2),0,Date::ITALY),DateTime.new0(Rational.new!(58509803,24),0,Date::ITALY),0,3600,:'SLST')}
add_period(1962,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(58509803,24),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
