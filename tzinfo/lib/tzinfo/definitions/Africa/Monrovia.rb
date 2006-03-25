require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Monrovia < Timezone #:nodoc:
setup
set_identifier('Africa/Monrovia')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52022445047,21600),0,Date::ITALY),-2588,0,:'LMT')}
add_period(1882,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52022445047,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52315600247,21600),0,Date::ITALY),-2588,0,:'MMT')}
add_period(1919,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(52315600247,21600),0,Date::ITALY),73529070,-2670,0,:'LRT')}
add_period(1972,5) {TimezonePeriod.new(73529070,nil,0,0,:'GMT')}
end
end
end
end
