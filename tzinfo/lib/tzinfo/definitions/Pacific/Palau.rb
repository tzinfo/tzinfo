require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Palau < Timezone #:nodoc:
setup
set_identifier('Pacific/Palau')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52172318731,21600),0,Date::ITALY),32276,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52172318731,21600),0,Date::ITALY),nil,32400,0,:'PWT')}
end
end
end
end
