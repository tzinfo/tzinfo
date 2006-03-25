require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Noumea < Timezone #:nodoc:
setup
set_identifier('Pacific/Noumea')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17419781071,7200),0,Date::ITALY),39948,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17419781071,7200),0,Date::ITALY),250002000,39600,0,:'NCT')}
add_period(1977,12) {TimezonePeriod.new(250002000,257342400,39600,3600,:'NCST')}
add_period(1978,2) {TimezonePeriod.new(257342400,281451600,39600,0,:'NCT')}
add_period(1978,12) {TimezonePeriod.new(281451600,288878400,39600,3600,:'NCST')}
add_period(1979,2) {TimezonePeriod.new(288878400,849366000,39600,0,:'NCT')}
add_period(1996,11) {TimezonePeriod.new(849366000,857228400,39600,3600,:'NCST')}
add_period(1997,3) {TimezonePeriod.new(857228400,nil,39600,0,:'NCT')}
end
end
end
end
