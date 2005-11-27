require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kosrae < Timezone #:nodoc:
setup
set_identifier('Pacific/Kosrae')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172317021,21600),0,Date::ITALY),39116,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172317021,21600),0,Date::ITALY),DateTime.new0(Rational.new!(58571881,24),0,Date::ITALY),39600,0,:'KOST')}
add_period(1969,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58571881,24),0,Date::ITALY),DateTime.new0(Rational.new!(2451179,1),0,Date::ITALY),43200,0,:'KOST')}
add_period(1998,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(2451179,1),0,Date::ITALY),nil,39600,0,:'KOST')}
end
end
end
end
