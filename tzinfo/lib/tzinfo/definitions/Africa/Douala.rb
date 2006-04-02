require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Douala < Timezone #:nodoc:
setup
set_identifier('Africa/Douala')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(8709848903,3600),0,Date::ITALY),2328,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(8709848903,3600),0,Date::ITALY),nil,3600,0,:WAT)}
end
end
end
end
