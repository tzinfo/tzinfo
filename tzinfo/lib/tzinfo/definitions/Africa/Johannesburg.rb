require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Johannesburg < Timezone #:nodoc:
setup
set_identifier('Africa/Johannesburg')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(108546139,45),0,Date::ITALY),6720,0,:LMT)}
add_period(1892,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(108546139,45),0,Date::ITALY),DateTime.new0(Rational.new!(38658791,16),0,Date::ITALY),5400,0,:SAST)}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(38658791,16),0,Date::ITALY),DateTime.new0(Rational.new!(4861245,2),0,Date::ITALY),7200,0,:SAST)}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861245,2),0,Date::ITALY),DateTime.new0(Rational.new!(58339307,24),0,Date::ITALY),7200,3600,:SAST)}
add_period(1943,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58339307,24),0,Date::ITALY),DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),7200,0,:SAST)}
add_period(1943,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),7200,3600,:SAST)}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),nil,7200,0,:SAST)}
end
end
end
end
