require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kabul < Timezone #:nodoc:
setup
set_identifier('Asia/Kabul')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2170231477,900),0,Date::ITALY),16608,0,:'LMT')}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(2170231477,900),0,Date::ITALY),DateTime.new0(Rational.new!(7294369,3),0,Date::ITALY),14400,0,:'AFT')}
add_period(1944,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(7294369,3),0,Date::ITALY),nil,16200,0,:'AFT')}
end
end
end
end
