require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Fiji < Timezone #:nodoc:
setup
set_identifier('Pacific/Fiji')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10457838739,4320),0,Date::ITALY),42820,0,:'LMT')}
add_period(1915,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(10457838739,4320),0,Date::ITALY),DateTime.new0(Rational.new!(29413417,12),0,Date::ITALY),43200,0,:'FJT')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29413417,12),0,Date::ITALY),DateTime.new0(Rational.new!(29414845,12),0,Date::ITALY),43200,3600,:'FJST')}
add_period(1999,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29414845,12),0,Date::ITALY),DateTime.new0(Rational.new!(29417869,12),0,Date::ITALY),43200,0,:'FJT')}
add_period(1999,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29417869,12),0,Date::ITALY),DateTime.new0(Rational.new!(29419213,12),0,Date::ITALY),43200,3600,:'FJST')}
add_period(2000,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(29419213,12),0,Date::ITALY),nil,43200,0,:'FJT')}
end
end
end
end
