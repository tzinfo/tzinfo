require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Majuro < Timezone #:nodoc:
setup
set_identifier('Pacific/Majuro')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1086923261,450),0,Date::ITALY),41088,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1086923261,450),0,Date::ITALY),DateTime.new0(Rational.new!(58571881,24),0,Date::ITALY),39600,0,:'MHT')}
add_period(1969,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58571881,24),0,Date::ITALY),nil,43200,0,:'MHT')}
end
end
end
end
