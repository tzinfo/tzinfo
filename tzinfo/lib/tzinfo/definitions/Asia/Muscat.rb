require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Muscat < Timezone #:nodoc:
setup
set_identifier('Asia/Muscat')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10464441137,4320),0,Date::ITALY),14060,0,:LMT)}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10464441137,4320),0,Date::ITALY),nil,14400,0,:GST)}
end
end
end
end
