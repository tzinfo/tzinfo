require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guatemala < Timezone #:nodoc:
setup
set_identifier('America/Guatemala')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52312429831,21600),0,Date::ITALY),-21724,0,:'LMT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(52312429831,21600),0,Date::ITALY),123055200,-21600,0,:'CT')}
add_period(1973,11) {TimezonePeriod.new(123055200,130914000,-21600,3600,:'CDT')}
add_period(1974,2) {TimezonePeriod.new(130914000,422344800,-21600,0,:'CST')}
add_period(1983,5) {TimezonePeriod.new(422344800,433054800,-21600,3600,:'CDT')}
add_period(1983,9) {TimezonePeriod.new(433054800,669708000,-21600,0,:'CST')}
add_period(1991,3) {TimezonePeriod.new(669708000,684219600,-21600,3600,:'CDT')}
add_period(1991,9) {TimezonePeriod.new(684219600,nil,-21600,0,:'CST')}
end
end
end
end
