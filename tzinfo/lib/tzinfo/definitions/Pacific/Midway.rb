require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Midway < Timezone #:nodoc:
setup
set_identifier('Pacific/Midway')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26086168721,10800),0,Date::ITALY),-42568,0,:LMT)}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(26086168721,10800),0,Date::ITALY),DateTime.new0(Rational.new!(58455071,24),0,Date::ITALY),-39600,0,:NST)}
add_period(1956,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58455071,24),0,Date::ITALY),DateTime.new0(Rational.new!(29228627,12),0,Date::ITALY),-39600,3600,:NDT)}
add_period(1956,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29228627,12),0,Date::ITALY),DateTime.new0(Rational.new!(58549967,24),0,Date::ITALY),-39600,0,:NST)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58549967,24),0,Date::ITALY),439038000,-39600,0,:BST)}
add_period(1983,11) {TimezonePeriod.new(439038000,nil,-39600,0,:SST)}
end
end
end
end
