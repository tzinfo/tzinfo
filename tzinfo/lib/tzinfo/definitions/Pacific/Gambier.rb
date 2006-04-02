require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Gambier < Timezone #:nodoc:
setup
set_identifier('Pacific/Gambier')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17421673499,7200),0,Date::ITALY),-32388,0,:LMT)}
add_period(1912,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(17421673499,7200),0,Date::ITALY),nil,-32400,0,:GAMT)}
end
end
end
end
