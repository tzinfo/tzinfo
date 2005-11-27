require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lubumbashi < Timezone #:nodoc:
setup
set_identifier('Africa/Lubumbashi')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1629610261,675),0,Date::ITALY),6592,0,:'LMT')}
add_period(1897,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(1629610261,675),0,Date::ITALY),nil,7200,0,:'CAT')}
end
end
end
end
