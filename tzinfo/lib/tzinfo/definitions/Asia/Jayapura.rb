require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Jayapura < Timezone #:nodoc:
setup
set_identifier('Asia/Jayapura')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2912414531,1200),0,Date::ITALY),33768,0,:'LMT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(2912414531,1200),0,Date::ITALY),DateTime.new0(Rational.new!(19448721,8),0,Date::ITALY),32400,0,:'EIT')}
add_period(1943,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19448721,8),0,Date::ITALY),DateTime.new0(Rational.new!(117042965,48),0,Date::ITALY),34200,0,:'CST')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(117042965,48),0,Date::ITALY),nil,32400,0,:'EIT')}
end
end
end
end
