require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Christmas < Timezone #:nodoc:
setup
set_identifier('Indian/Christmas')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52125664457,21600),0,Date::ITALY),25372,0,:'LMT')}
add_period(1895,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52125664457,21600),0,Date::ITALY),nil,25200,0,:'CXT')}
end
end
end
end
