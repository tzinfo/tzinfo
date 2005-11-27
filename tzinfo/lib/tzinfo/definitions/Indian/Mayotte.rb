require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Mayotte < Timezone #:nodoc:
setup
set_identifier('Indian/Mayotte')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26127558443,10800),0,Date::ITALY),10856,0,:'LMT')}
add_period(1911,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(26127558443,10800),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
