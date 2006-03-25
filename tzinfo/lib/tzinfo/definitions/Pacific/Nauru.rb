require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Nauru < Timezone #:nodoc:
setup
set_identifier('Pacific/Nauru')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10466081437,4320),0,Date::ITALY),40060,0,:'LMT')}
add_period(1921,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10466081437,4320),0,Date::ITALY),DateTime.new0(Rational.new!(116660785,48),0,Date::ITALY),41400,0,:'NRT')}
add_period(1942,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(116660785,48),0,Date::ITALY),DateTime.new0(Rational.new!(19450537,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1944,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(19450537,8),0,Date::ITALY),294323400,41400,0,:'NRT')}
add_period(1979,4) {TimezonePeriod.new(294323400,nil,43200,0,:'NRT')}
end
end
end
end
