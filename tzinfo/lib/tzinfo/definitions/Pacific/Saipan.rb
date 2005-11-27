require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Saipan < Timezone #:nodoc:
setup
set_identifier('Pacific/Saipan')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3448702217,1440),0,Date::ITALY),-51420,0,:'LMT')}
add_period(1844,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3448702217,1440),0,Date::ITALY),DateTime.new0(Rational.new!(3478154537,1440),0,Date::ITALY),34980,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3478154537,1440),0,Date::ITALY),DateTime.new0(Rational.new!(19523961,8),0,Date::ITALY),32400,0,:'MPT')}
add_period(1969,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19523961,8),0,Date::ITALY),DateTime.new0(Rational.new!(29422813,12),0,Date::ITALY),36000,0,:'MPT')}
add_period(2000,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29422813,12),0,Date::ITALY),nil,36000,0,:'ChST')}
end
end
end
end
