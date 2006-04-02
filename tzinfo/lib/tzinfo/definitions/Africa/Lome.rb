require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lome < Timezone #:nodoc:
setup
set_identifier('Africa/Lome')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52109233127,21600),0,Date::ITALY),292,0,:LMT)}
add_period(1892,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52109233127,21600),0,Date::ITALY),nil,0,0,:GMT)}
end
end
end
end
