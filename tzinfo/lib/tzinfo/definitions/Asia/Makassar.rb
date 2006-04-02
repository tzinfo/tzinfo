require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Makassar < Timezone #:nodoc:
setup
set_identifier('Asia/Makassar')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1453394501,600),0,Date::ITALY),28656,0,:LMT)}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(1453394501,600),0,Date::ITALY),DateTime.new0(Rational.new!(1456207301,600),0,Date::ITALY),28656,0,:MMT)}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(1456207301,600),0,Date::ITALY),DateTime.new0(Rational.new!(14582395,6),0,Date::ITALY),28800,0,:CIT)}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(14582395,6),0,Date::ITALY),DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),32400,0,:JST)}
add_period(1945,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),nil,28800,0,:CIT)}
end
end
end
end
