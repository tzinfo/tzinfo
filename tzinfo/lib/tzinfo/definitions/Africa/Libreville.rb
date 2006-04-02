require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Libreville < Timezone #:nodoc:
setup
set_identifier('Africa/Libreville')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1935521979,800),0,Date::ITALY),2268,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1935521979,800),0,Date::ITALY),nil,3600,0,:WAT)}
end
end
end
end
