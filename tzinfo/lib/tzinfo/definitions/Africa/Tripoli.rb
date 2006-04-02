require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Tripoli < Timezone #:nodoc:
setup
set_identifier('Africa/Tripoli')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52322208409,21600),0,Date::ITALY),3164,0,:LMT)}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52322208409,21600),0,Date::ITALY),DateTime.new0(Rational.new!(58414405,24),0,Date::ITALY),3600,0,:CET)}
add_period(1951,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58414405,24),0,Date::ITALY),DateTime.new0(Rational.new!(29208149,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29208149,12),0,Date::ITALY),DateTime.new0(Rational.new!(58431829,24),0,Date::ITALY),3600,0,:CET)}
add_period(1953,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58431829,24),0,Date::ITALY),DateTime.new0(Rational.new!(29216921,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1953,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29216921,12),0,Date::ITALY),DateTime.new0(Rational.new!(58449131,24),0,Date::ITALY),3600,0,:CET)}
add_period(1955,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58449131,24),0,Date::ITALY),DateTime.new0(Rational.new!(29225681,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1955,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29225681,12),0,Date::ITALY),DateTime.new0(Rational.new!(58477667,24),0,Date::ITALY),3600,0,:CET)}
add_period(1958,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58477667,24),0,Date::ITALY),378684000,7200,0,:EET)}
add_period(1981,12) {TimezonePeriod.new(378684000,386463600,3600,0,:CET)}
add_period(1982,3) {TimezonePeriod.new(386463600,402271200,3600,3600,:CEST)}
add_period(1982,9) {TimezonePeriod.new(402271200,417999600,3600,0,:CET)}
add_period(1983,3) {TimezonePeriod.new(417999600,433807200,3600,3600,:CEST)}
add_period(1983,9) {TimezonePeriod.new(433807200,449622000,3600,0,:CET)}
add_period(1984,3) {TimezonePeriod.new(449622000,465429600,3600,3600,:CEST)}
add_period(1984,9) {TimezonePeriod.new(465429600,481590000,3600,0,:CET)}
add_period(1985,4) {TimezonePeriod.new(481590000,496965600,3600,3600,:CEST)}
add_period(1985,9) {TimezonePeriod.new(496965600,512953200,3600,0,:CET)}
add_period(1986,4) {TimezonePeriod.new(512953200,528674400,3600,3600,:CEST)}
add_period(1986,10) {TimezonePeriod.new(528674400,544230000,3600,0,:CET)}
add_period(1987,3) {TimezonePeriod.new(544230000,560037600,3600,3600,:CEST)}
add_period(1987,9) {TimezonePeriod.new(560037600,575852400,3600,0,:CET)}
add_period(1988,3) {TimezonePeriod.new(575852400,591660000,3600,3600,:CEST)}
add_period(1988,9) {TimezonePeriod.new(591660000,607388400,3600,0,:CET)}
add_period(1989,3) {TimezonePeriod.new(607388400,623196000,3600,3600,:CEST)}
add_period(1989,9) {TimezonePeriod.new(623196000,641775600,3600,0,:CET)}
add_period(1990,5) {TimezonePeriod.new(641775600,844034400,7200,0,:EET)}
add_period(1996,9) {TimezonePeriod.new(844034400,860108400,3600,0,:CET)}
add_period(1997,4) {TimezonePeriod.new(860108400,875916000,3600,3600,:CEST)}
add_period(1997,10) {TimezonePeriod.new(875916000,nil,7200,0,:EET)}
end
end
end
end
