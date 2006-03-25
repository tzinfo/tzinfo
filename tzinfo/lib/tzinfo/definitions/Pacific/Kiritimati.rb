require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kiritimati < Timezone #:nodoc:
setup
set_identifier('Pacific/Kiritimati')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(652154203,270),0,Date::ITALY),-37760,0,:'LMT')}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(652154203,270),0,Date::ITALY),307622400,-38400,0,:'LINT')}
add_period(1979,10) {TimezonePeriod.new(307622400,788954400,-36000,0,:'LINT')}
add_period(1995,1) {TimezonePeriod.new(788954400,nil,50400,0,:'LINT')}
end
end
end
end
