require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Rothera < Timezone #:nodoc:
setup
set_identifier('Antarctica/Rothera')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4886227,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1976,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(4886227,2),0,Date::ITALY),nil,-10800,0,:'ROTT')}
end
end
end
end
