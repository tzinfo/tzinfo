require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuwait < Timezone #:nodoc:
setup
set_identifier('Asia/Kuwait')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52558899121,21600),0,Date::ITALY),11516,0,:'LMT')}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52558899121,21600),0,Date::ITALY),nil,10800,0,:'AST')}
end
end
end
end
