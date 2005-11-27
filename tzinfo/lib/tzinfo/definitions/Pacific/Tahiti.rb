require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tahiti < Timezone #:nodoc:
setup
set_identifier('Pacific/Tahiti')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26132510687,10800),0,Date::ITALY),-35896,0,:'LMT')}
add_period(1912,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(26132510687,10800),0,Date::ITALY),nil,-36000,0,:'TAHT')}
end
end
end
end
