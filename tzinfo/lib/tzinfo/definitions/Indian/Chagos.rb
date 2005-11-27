require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Chagos < Timezone #:nodoc:
setup
set_identifier('Indian/Chagos')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10443929611,4320),0,Date::ITALY),17380,0,:'LMT')}
add_period(1906,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10443929611,4320),0,Date::ITALY),DateTime.new0(Rational.new!(58801999,24),0,Date::ITALY),18000,0,:'IOT')}
add_period(1995,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(58801999,24),0,Date::ITALY),nil,21600,0,:'IOT')}
end
end
end
end
