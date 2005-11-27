require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kiritimati < Timezone #:nodoc:
setup
set_identifier('Pacific/Kiritimati')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(652154203,270),0,Date::ITALY),-37760,0,:'LMT')}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(652154203,270),0,Date::ITALY),DateTime.new0(Rational.new!(43994663,18),0,Date::ITALY),-38400,0,:'LINT')}
add_period(1979,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(43994663,18),0,Date::ITALY),DateTime.new0(Rational.new!(29396627,12),0,Date::ITALY),-36000,0,:'LINT')}
add_period(1995,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29396627,12),0,Date::ITALY),nil,50400,0,:'LINT')}
end
end
end
end
