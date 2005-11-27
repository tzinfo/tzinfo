require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Galapagos < Timezone #:nodoc:
setup
set_identifier('Pacific/Galapagos')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1091854237,450),0,Date::ITALY),-21504,0,:'LMT')}
add_period(1931,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1091854237,450),0,Date::ITALY),DateTime.new0(Rational.new!(58714361,24),0,Date::ITALY),-18000,0,:'ECT')}
add_period(1986,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58714361,24),0,Date::ITALY),nil,-21600,0,:'GALT')}
end
end
end
end
