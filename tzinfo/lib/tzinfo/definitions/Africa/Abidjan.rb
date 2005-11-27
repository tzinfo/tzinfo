require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Abidjan < Timezone #:nodoc:
setup
set_identifier('Africa/Abidjan')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26129547121,10800),0,Date::ITALY),-968,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26129547121,10800),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
