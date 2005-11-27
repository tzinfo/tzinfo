require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Maputo < Timezone #:nodoc:
setup
set_identifier('Africa/Maputo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10437873449,4320),0,Date::ITALY),7820,0,:'LMT')}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(10437873449,4320),0,Date::ITALY),nil,7200,0,:'CAT')}
end
end
end
end
