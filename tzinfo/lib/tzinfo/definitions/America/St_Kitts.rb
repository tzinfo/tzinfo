require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Kitts < Timezone #:nodoc:
setup
set_identifier('America/St_Kitts')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52260415363,21600),0,Date::ITALY),-15052,0,:'LMT')}
add_period(1912,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(52260415363,21600),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
