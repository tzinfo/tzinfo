require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Tunis < Timezone #:nodoc:
setup
set_identifier('Africa/Tunis')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52017389389,21600),0,Date::ITALY),2444,0,:LMT)}
add_period(1881,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52017389389,21600),0,Date::ITALY),DateTime.new0(Rational.new!(69670267013,28800),0,Date::ITALY),561,0,:PMT)}
add_period(1911,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(69670267013,28800),0,Date::ITALY),DateTime.new0(Rational.new!(29152433,12),0,Date::ITALY),3600,0,:CET)}
add_period(1939,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29152433,12),0,Date::ITALY),DateTime.new0(Rational.new!(29155037,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1939,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29155037,12),0,Date::ITALY),DateTime.new0(Rational.new!(29156225,12),0,Date::ITALY),3600,0,:CET)}
add_period(1940,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29156225,12),0,Date::ITALY),DateTime.new0(Rational.new!(29163281,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1941,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29163281,12),0,Date::ITALY),DateTime.new0(Rational.new!(58330259,24),0,Date::ITALY),3600,0,:CET)}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58330259,24),0,Date::ITALY),DateTime.new0(Rational.new!(58335973,24),0,Date::ITALY),3600,3600,:CEST)}
add_period(1942,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(58335973,24),0,Date::ITALY),DateTime.new0(Rational.new!(58339501,24),0,Date::ITALY),3600,0,:CET)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58339501,24),0,Date::ITALY),DateTime.new0(Rational.new!(4861663,2),0,Date::ITALY),3600,3600,:CEST)}
add_period(1943,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861663,2),0,Date::ITALY),DateTime.new0(Rational.new!(58340149,24),0,Date::ITALY),3600,0,:CET)}
add_period(1943,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58340149,24),0,Date::ITALY),DateTime.new0(Rational.new!(4862003,2),0,Date::ITALY),3600,3600,:CEST)}
add_period(1943,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(4862003,2),0,Date::ITALY),DateTime.new0(Rational.new!(58348405,24),0,Date::ITALY),3600,0,:CET)}
add_period(1944,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58348405,24),0,Date::ITALY),DateTime.new0(Rational.new!(29176457,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1944,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29176457,12),0,Date::ITALY),DateTime.new0(Rational.new!(58357141,24),0,Date::ITALY),3600,0,:CET)}
add_period(1945,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58357141,24),0,Date::ITALY),DateTime.new0(Rational.new!(29180573,12),0,Date::ITALY),3600,3600,:CEST)}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29180573,12),0,Date::ITALY),231202800,3600,0,:CET)}
add_period(1977,4) {TimezonePeriod.new(231202800,243903600,3600,3600,:CEST)}
add_period(1977,9) {TimezonePeriod.new(243903600,262825200,3600,0,:CET)}
add_period(1978,4) {TimezonePeriod.new(262825200,276044400,3600,3600,:CEST)}
add_period(1978,9) {TimezonePeriod.new(276044400,581122800,3600,0,:CET)}
add_period(1988,5) {TimezonePeriod.new(581122800,591145200,3600,3600,:CEST)}
add_period(1988,9) {TimezonePeriod.new(591145200,606870000,3600,0,:CET)}
add_period(1989,3) {TimezonePeriod.new(606870000,622594800,3600,3600,:CEST)}
add_period(1989,9) {TimezonePeriod.new(622594800,641516400,3600,0,:CET)}
add_period(1990,4) {TimezonePeriod.new(641516400,654649200,3600,3600,:CEST)}
add_period(1990,9) {TimezonePeriod.new(654649200,1114902000,3600,0,:CET)}
add_period(2005,4) {TimezonePeriod.new(1114902000,1128038400,3600,3600,:CEST)}
add_period(2005,9) {TimezonePeriod.new(1128038400,nil,3600,0,:CET)}
end
end
end
end
