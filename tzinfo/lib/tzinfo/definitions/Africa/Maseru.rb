require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Maseru < Timezone #:nodoc:
setup
set_identifier('Africa/Maseru')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(347929117,144),0,Date::ITALY),6600,0,:LMT)}
add_period(1903,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(347929117,144),0,Date::ITALY),DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),7200,0,:SAST)}
add_period(1943,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),7200,3600,:SAST)}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),nil,7200,0,:SAST)}
end
end
end
end
