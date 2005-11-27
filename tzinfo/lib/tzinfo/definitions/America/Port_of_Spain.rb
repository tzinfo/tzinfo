require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Port_of_Spain < Timezone #:nodoc:
setup
set_identifier('America/Port_of_Spain')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52260415291,21600),0,Date::ITALY),-14764,0,:'LMT')}
add_period(1912,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(52260415291,21600),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
