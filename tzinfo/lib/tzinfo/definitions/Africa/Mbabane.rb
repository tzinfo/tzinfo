require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Mbabane < Timezone #:nodoc:
setup
set_identifier('Africa/Mbabane')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(8698227889,3600),0,Date::ITALY),7464,0,:'LMT')}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(8698227889,3600),0,Date::ITALY),nil,7200,0,:'SAST')}
end
end
end
end
