require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Guadalcanal < Timezone #:nodoc:
setup
set_identifier('Pacific/Guadalcanal')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17421667601,7200),0,Date::ITALY),38388,0,:LMT)}
add_period(1912,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(17421667601,7200),0,Date::ITALY),nil,39600,0,:SBT)}
end
end
end
end
