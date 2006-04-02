require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Djibouti < Timezone #:nodoc:
setup
set_identifier('Africa/Djibouti')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17418372337,7200),0,Date::ITALY),10356,0,:LMT)}
add_period(1911,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(17418372337,7200),0,Date::ITALY),nil,10800,0,:EAT)}
end
end
end
end
