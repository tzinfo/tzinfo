require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Port_Moresby < Timezone #:nodoc:
setup
set_identifier('Pacific/Port_Moresby')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5200664597,2160),0,Date::ITALY),35320,0,:LMT)}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5200664597,2160),0,Date::ITALY),DateTime.new0(Rational.new!(13031248093,5400),0,Date::ITALY),35312,0,:PMMT)}
add_period(1894,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(13031248093,5400),0,Date::ITALY),nil,36000,0,:PGT)}
end
end
end
end
