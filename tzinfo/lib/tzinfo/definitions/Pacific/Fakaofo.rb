require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Fakaofo < Timezone #:nodoc:
setup
set_identifier('Pacific/Fakaofo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26086168537,10800),0,Date::ITALY),-41096,0,:'LMT')}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26086168537,10800),0,Date::ITALY),nil,-36000,0,:'TKT')}
end
end
end
end
