require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kigali < Timezone #:nodoc:
setup
set_identifier('Africa/Kigali')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(13110953849,5400),0,Date::ITALY),7216,0,:'LMT')}
add_period(1935,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(13110953849,5400),0,Date::ITALY),nil,7200,0,:'CAT')}
end
end
end
end
