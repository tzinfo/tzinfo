require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Porto__m__Novo < Timezone #:nodoc:
setup
set_identifier('Africa/Porto-Novo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259093843,21600),0,Date::ITALY),628,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259093843,21600),0,Date::ITALY),DateTime.new0(Rational.new!(4854989,2),0,Date::ITALY),0,0,:GMT)}
add_period(1934,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(4854989,2),0,Date::ITALY),nil,3600,0,:WAT)}
end
end
end
end
