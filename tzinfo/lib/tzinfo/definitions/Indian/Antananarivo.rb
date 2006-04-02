require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Antananarivo < Timezone #:nodoc:
setup
set_identifier('Indian/Antananarivo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52255116749,21600),0,Date::ITALY),11404,0,:LMT)}
add_period(1911,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(52255116749,21600),0,Date::ITALY),DateTime.new0(Rational.new!(7304404,3),0,Date::ITALY),10800,0,:EAT)}
add_period(1954,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(7304404,3),0,Date::ITALY),DateTime.new0(Rational.new!(7304677,3),0,Date::ITALY),10800,3600,:EAST)}
add_period(1954,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(7304677,3),0,Date::ITALY),nil,10800,0,:EAT)}
end
end
end
end
