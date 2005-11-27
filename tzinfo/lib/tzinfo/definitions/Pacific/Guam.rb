require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Guam < Timezone #:nodoc:
setup
set_identifier('Pacific/Guam')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1149567407,480),0,Date::ITALY),-51660,0,:'LMT')}
add_period(1844,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1149567407,480),0,Date::ITALY),DateTime.new0(Rational.new!(1159384847,480),0,Date::ITALY),34740,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1159384847,480),0,Date::ITALY),DateTime.new0(Rational.new!(29422813,12),0,Date::ITALY),36000,0,:'GST')}
add_period(2000,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29422813,12),0,Date::ITALY),nil,36000,0,:'ChST')}
end
end
end
end
