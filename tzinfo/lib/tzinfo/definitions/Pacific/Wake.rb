require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Wake < Timezone #:nodoc:
setup
set_identifier('Pacific/Wake')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172316803,21600),0,Date::ITALY),39988,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172316803,21600),0,Date::ITALY),nil,43200,0,:'WAKT')}
end
end
end
end
