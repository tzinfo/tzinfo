require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Atlantic #:nodoc:
class Cape_Verde < Timezone #:nodoc:
setup
set_identifier('Atlantic/Cape_Verde')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52219653811,21600),0,Date::ITALY),-5644,0,:'LMT')}
add_period(1907,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52219653811,21600),0,Date::ITALY),DateTime.new0(Rational.new!(29167243,12),0,Date::ITALY),-7200,0,:'CVT')}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29167243,12),0,Date::ITALY),DateTime.new0(Rational.new!(58361845,24),0,Date::ITALY),-7200,3600,:'CVST')}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58361845,24),0,Date::ITALY),DateTime.new0(Rational.new!(7328225,3),0,Date::ITALY),-7200,0,:'CVT')}
add_period(1975,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(7328225,3),0,Date::ITALY),nil,-3600,0,:'CVT')}
end
end
end
end
