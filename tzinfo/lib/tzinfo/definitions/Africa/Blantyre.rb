require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Blantyre < Timezone #:nodoc:
setup
set_identifier('Africa/Blantyre')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(173964557,72),0,Date::ITALY),8400,0,:'LMT')}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(173964557,72),0,Date::ITALY),nil,7200,0,:'CAT')}
end
end
end
end
