require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Syowa < Timezone #:nodoc:
setup
set_identifier('Antarctica/Syowa')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4871735,2),0,Date::ITALY),0,0,:zzz)}
add_period(1957,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4871735,2),0,Date::ITALY),nil,10800,0,:SYOT)}
end
end
end
end
