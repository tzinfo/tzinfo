require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Mawson < Timezone #:nodoc:
setup
set_identifier('Antarctica/Mawson')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4869573,2),0,Date::ITALY),0,0,:zzz)}
add_period(1954,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4869573,2),0,Date::ITALY),nil,21600,0,:MAWT)}
end
end
end
end
