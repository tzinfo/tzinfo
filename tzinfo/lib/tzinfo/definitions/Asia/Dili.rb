require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dili < Timezone #:nodoc:
setup
set_identifier('Asia/Dili')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10451817293,4320),0,Date::ITALY),30140,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10451817293,4320),0,Date::ITALY),DateTime.new0(Rational.new!(19443297,8),0,Date::ITALY),28800,0,:TLT)}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19443297,8),0,Date::ITALY),DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),32400,0,:JST)}
add_period(1945,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),199897200,32400,0,:TLT)}
add_period(1976,5) {TimezonePeriod.new(199897200,969120000,28800,0,:CIT)}
add_period(2000,9) {TimezonePeriod.new(969120000,nil,32400,0,:TLT)}
end
end
end
end
