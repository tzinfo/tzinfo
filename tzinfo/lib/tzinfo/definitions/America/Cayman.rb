require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Cayman < Timezone #:nodoc:
setup
set_identifier('America/Cayman')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52085564483,21600),0,Date::ITALY),-19532,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52085564483,21600),0,Date::ITALY),DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),-18432,0,:'KMT')}
add_period(1912,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(362915057,150),0,Date::ITALY),nil,-18000,0,:'EST')}
end
end
end
end
