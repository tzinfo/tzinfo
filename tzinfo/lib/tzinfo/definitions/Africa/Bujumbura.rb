require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bujumbura < Timezone #:nodoc:
setup
set_identifier('Africa/Bujumbura')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26042778919,10800),0,Date::ITALY),7048,0,:LMT)}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26042778919,10800),0,Date::ITALY),nil,7200,0,:CAT)}
end
end
end
end
