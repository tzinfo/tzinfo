require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Truk < Timezone #:nodoc:
setup
set_identifier('Pacific/Truk')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172317693,21600),0,Date::ITALY),36428,0,:LMT)}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172317693,21600),0,Date::ITALY),nil,36000,0,:TRUT)}
end
end
end
end
