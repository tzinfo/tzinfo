require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Wallis < Timezone #:nodoc:
setup
set_identifier('Pacific/Wallis')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5217231577,2160),0,Date::ITALY),44120,0,:LMT)}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5217231577,2160),0,Date::ITALY),nil,43200,0,:WFT)}
end
end
end
end
