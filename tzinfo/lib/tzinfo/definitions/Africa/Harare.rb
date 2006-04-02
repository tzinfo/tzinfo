require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Harare < Timezone #:nodoc:
setup
set_identifier('Africa/Harare')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1932939531,800),0,Date::ITALY),7452,0,:LMT)}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(1932939531,800),0,Date::ITALY),nil,7200,0,:CAT)}
end
end
end
end
