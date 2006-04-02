require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Jamaica < Timezone #:nodoc:
setup
set_identifier('America/Jamaica')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(361705307,150),0,Date::ITALY),-18432,0,:LMT)}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(361705307,150),0,Date::ITALY),DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),-18432,0,:KMT)}
add_period(1912,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),136364400,-18000,0,:EST)}
add_period(1974,4) {TimezonePeriod.new(136364400,152085600,-18000,3600,:EDT)}
add_period(1974,10) {TimezonePeriod.new(152085600,162370800,-18000,0,:EST)}
add_period(1975,2) {TimezonePeriod.new(162370800,183535200,-18000,3600,:EDT)}
add_period(1975,10) {TimezonePeriod.new(183535200,199263600,-18000,0,:EST)}
add_period(1976,4) {TimezonePeriod.new(199263600,215589600,-18000,3600,:EDT)}
add_period(1976,10) {TimezonePeriod.new(215589600,230713200,-18000,0,:EST)}
add_period(1977,4) {TimezonePeriod.new(230713200,247039200,-18000,3600,:EDT)}
add_period(1977,10) {TimezonePeriod.new(247039200,262767600,-18000,0,:EST)}
add_period(1978,4) {TimezonePeriod.new(262767600,278488800,-18000,3600,:EDT)}
add_period(1978,10) {TimezonePeriod.new(278488800,294217200,-18000,0,:EST)}
add_period(1979,4) {TimezonePeriod.new(294217200,309938400,-18000,3600,:EDT)}
add_period(1979,10) {TimezonePeriod.new(309938400,325666800,-18000,0,:EST)}
add_period(1980,4) {TimezonePeriod.new(325666800,341388000,-18000,3600,:EDT)}
add_period(1980,10) {TimezonePeriod.new(341388000,357116400,-18000,0,:EST)}
add_period(1981,4) {TimezonePeriod.new(357116400,372837600,-18000,3600,:EDT)}
add_period(1981,10) {TimezonePeriod.new(372837600,388566000,-18000,0,:EST)}
add_period(1982,4) {TimezonePeriod.new(388566000,404892000,-18000,3600,:EDT)}
add_period(1982,10) {TimezonePeriod.new(404892000,420015600,-18000,0,:EST)}
add_period(1983,4) {TimezonePeriod.new(420015600,436341600,-18000,3600,:EDT)}
add_period(1983,10) {TimezonePeriod.new(436341600,nil,-18000,0,:EST)}
end
end
end
end
