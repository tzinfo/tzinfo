require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tarawa < Timezone #:nodoc:
setup
set_identifier('Pacific/Tarawa')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172316419,21600),0,Date::ITALY),41524,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172316419,21600),0,Date::ITALY),nil,43200,0,:'GILT')}
end
end
end
end
