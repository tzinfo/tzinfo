require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Gaborone < Timezone #:nodoc:
setup
set_identifier('Africa/Gaborone')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10409223289,4320),0,Date::ITALY),6220,0,:'LMT')}
add_period(1884,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10409223289,4320),0,Date::ITALY),DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),7200,0,:'CAT')}
add_period(1943,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861973,2),0,Date::ITALY),DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),7200,3600,:'CAST')}
add_period(1944,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58348043,24),0,Date::ITALY),nil,7200,0,:'CAT')}
end
end
end
end
