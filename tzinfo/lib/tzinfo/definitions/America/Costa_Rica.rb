require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Costa_Rica < Timezone #:nodoc:
setup
set_identifier('America/Costa_Rica')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10417112929,4320),0,Date::ITALY),-20180,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10417112929,4320),0,Date::ITALY),DateTime.new0(Rational.new!(10466084449,4320),0,Date::ITALY),-20180,0,:'SJMT')}
add_period(1921,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10466084449,4320),0,Date::ITALY),288770400,-21600,0,:'CST')}
add_period(1979,2) {TimezonePeriod.new(288770400,297234000,-21600,3600,:'CDT')}
add_period(1979,6) {TimezonePeriod.new(297234000,320220000,-21600,0,:'CST')}
add_period(1980,2) {TimezonePeriod.new(320220000,328683600,-21600,3600,:'CDT')}
add_period(1980,6) {TimezonePeriod.new(328683600,664264800,-21600,0,:'CST')}
add_period(1991,1) {TimezonePeriod.new(664264800,678344400,-21600,3600,:'CDT')}
add_period(1991,7) {TimezonePeriod.new(678344400,695714400,-21600,0,:'CST')}
add_period(1992,1) {TimezonePeriod.new(695714400,700635600,-21600,3600,:'CDT')}
add_period(1992,3) {TimezonePeriod.new(700635600,nil,-21600,0,:'CST')}
end
end
end
end
