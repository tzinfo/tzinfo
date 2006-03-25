require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Managua < Timezone #:nodoc:
setup
set_identifier('America/Managua')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52085564777,21600),0,Date::ITALY),-20708,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52085564777,21600),0,Date::ITALY),DateTime.new0(Rational.new!(8739402263,3600),0,Date::ITALY),-20712,0,:'MMT')}
add_period(1934,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(8739402263,3600),0,Date::ITALY),105084000,-21600,0,:'CST')}
add_period(1973,5) {TimezonePeriod.new(105084000,161758800,-18000,0,:'EST')}
add_period(1975,2) {TimezonePeriod.new(161758800,290584800,-21600,0,:'CT')}
add_period(1979,3) {TimezonePeriod.new(290584800,299134800,-21600,3600,:'CDT')}
add_period(1979,6) {TimezonePeriod.new(299134800,322034400,-21600,0,:'CST')}
add_period(1980,3) {TimezonePeriod.new(322034400,330584400,-21600,3600,:'CDT')}
add_period(1980,6) {TimezonePeriod.new(330584400,694260000,-21600,0,:'CST')}
add_period(1992,1) {TimezonePeriod.new(694260000,717310800,-21600,3600,:'CDT')}
add_period(1992,9) {TimezonePeriod.new(717310800,725882400,-21600,0,:'CST')}
add_period(1993,1) {TimezonePeriod.new(725882400,912488400,-18000,0,:'EST')}
add_period(1998,12) {TimezonePeriod.new(912488400,1113112800,-21600,0,:'CT')}
add_period(2005,4) {TimezonePeriod.new(1113112800,1128229200,-21600,3600,:'CDT')}
add_period(2005,10) {TimezonePeriod.new(1128229200,nil,-21600,0,:'CST')}
end
end
end
end
