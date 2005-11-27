require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Brunei < Timezone #:nodoc:
setup
set_identifier('Asia/Brunei')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10474164781,4320),0,Date::ITALY),27580,0,:'LMT')}
add_period(1926,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(10474164781,4320),0,Date::ITALY),DateTime.new0(Rational.new!(38833171,16),0,Date::ITALY),27000,0,:'BNT')}
add_period(1932,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(38833171,16),0,Date::ITALY),nil,28800,0,:'BNT')}
end
end
end
end
