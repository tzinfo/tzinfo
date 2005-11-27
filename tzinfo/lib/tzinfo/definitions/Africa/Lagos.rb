require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lagos < Timezone #:nodoc:
setup
set_identifier('Africa/Lagos')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4359964483,1800),0,Date::ITALY),816,0,:'LMT')}
add_period(1919,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(4359964483,1800),0,Date::ITALY),nil,3600,0,:'WAT')}
end
end
end
end
