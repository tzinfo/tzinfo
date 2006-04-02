require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Cocos < Timezone #:nodoc:
setup
set_identifier('Indian/Cocos')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10432887397,4320),0,Date::ITALY),23260,0,:LMT)}
add_period(1899,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10432887397,4320),0,Date::ITALY),nil,23400,0,:CCT)}
end
end
end
end
