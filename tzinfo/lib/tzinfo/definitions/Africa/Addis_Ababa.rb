require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Addis_Ababa < Timezone #:nodoc:
setup
set_identifier('Africa/Addis_Ababa')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(961625357,400),0,Date::ITALY),9288,0,:LMT)}
add_period(1869,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(961625357,400),0,Date::ITALY),DateTime.new0(Rational.new!(5245113727,2160),0,Date::ITALY),9320,0,:ADMT)}
add_period(1936,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(5245113727,2160),0,Date::ITALY),nil,10800,0,:EAT)}
end
end
end
end
