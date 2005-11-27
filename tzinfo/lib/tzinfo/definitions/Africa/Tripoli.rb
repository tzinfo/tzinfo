require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Tripoli < Timezone #:nodoc:
setup
set_identifier('Africa/Tripoli')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52322208409,21600),0,Date::ITALY),3164,0,:'LMT')}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52322208409,21600),0,Date::ITALY),DateTime.new0(Rational.new!(58414405,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1951,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58414405,24),0,Date::ITALY),DateTime.new0(Rational.new!(29208149,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29208149,12),0,Date::ITALY),DateTime.new0(Rational.new!(58431829,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1953,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58431829,24),0,Date::ITALY),DateTime.new0(Rational.new!(29216921,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1953,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29216921,12),0,Date::ITALY),DateTime.new0(Rational.new!(58449131,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1955,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58449131,24),0,Date::ITALY),DateTime.new0(Rational.new!(29225681,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1955,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29225681,12),0,Date::ITALY),DateTime.new0(Rational.new!(58477667,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1958,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58477667,24),0,Date::ITALY),DateTime.new0(Rational.new!(29339645,12),0,Date::ITALY),7200,0,:'EET')}
add_period(1981,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29339645,12),0,Date::ITALY),DateTime.new0(Rational.new!(58681451,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58681451,24),0,Date::ITALY),DateTime.new0(Rational.new!(29342921,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29342921,12),0,Date::ITALY),DateTime.new0(Rational.new!(58690211,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690211,24),0,Date::ITALY),DateTime.new0(Rational.new!(29347301,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29347301,12),0,Date::ITALY),DateTime.new0(Rational.new!(58698995,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698995,24),0,Date::ITALY),DateTime.new0(Rational.new!(29351693,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29351693,12),0,Date::ITALY),DateTime.new0(Rational.new!(58707875,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1985,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58707875,24),0,Date::ITALY),DateTime.new0(Rational.new!(29356073,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29356073,12),0,Date::ITALY),DateTime.new0(Rational.new!(58716587,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1986,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58716587,24),0,Date::ITALY),DateTime.new0(Rational.new!(29360477,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1986,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29360477,12),0,Date::ITALY),DateTime.new0(Rational.new!(58725275,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58725275,24),0,Date::ITALY),DateTime.new0(Rational.new!(29364833,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29364833,12),0,Date::ITALY),DateTime.new0(Rational.new!(58734059,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58734059,24),0,Date::ITALY),DateTime.new0(Rational.new!(29369225,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29369225,12),0,Date::ITALY),DateTime.new0(Rational.new!(58742819,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58742819,24),0,Date::ITALY),DateTime.new0(Rational.new!(29373605,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29373605,12),0,Date::ITALY),DateTime.new0(Rational.new!(58752371,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1990,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(58752371,24),0,Date::ITALY),DateTime.new0(Rational.new!(29404277,12),0,Date::ITALY),7200,0,:'EET')}
add_period(1996,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29404277,12),0,Date::ITALY),DateTime.new0(Rational.new!(58813019,24),0,Date::ITALY),3600,0,:'CET')}
add_period(1997,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58813019,24),0,Date::ITALY),DateTime.new0(Rational.new!(29408705,12),0,Date::ITALY),3600,3600,:'CEST')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29408705,12),0,Date::ITALY),nil,7200,0,:'EET')}
end
end
end
end
