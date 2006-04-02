require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lusaka < Timezone #:nodoc:
setup
set_identifier('Africa/Lusaka')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52189367503,21600),0,Date::ITALY),6788,0,:LMT)}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(52189367503,21600),0,Date::ITALY),nil,7200,0,:CAT)}
end
end
end
end
