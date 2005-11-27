require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Pontianak < Timezone #:nodoc:
setup
set_identifier('Asia/Pontianak')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(652876793,270),0,Date::ITALY),26240,0,:'LMT')}
add_period(1908,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(652876793,270),0,Date::ITALY),DateTime.new0(Rational.new!(655293293,270),0,Date::ITALY),26240,0,:'PMT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(655293293,270),0,Date::ITALY),DateTime.new0(Rational.new!(38886211,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1942,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(38886211,16),0,Date::ITALY),DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1945,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453345,8),0,Date::ITALY),DateTime.new0(Rational.new!(38922755,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1948,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(38922755,16),0,Date::ITALY),DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),28800,0,:'WIT')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14600413,6),0,Date::ITALY),DateTime.new0(Rational.new!(39014323,16),0,Date::ITALY),27000,0,:'WIT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(39014323,16),0,Date::ITALY),DateTime.new0(Rational.new!(14682967,6),0,Date::ITALY),28800,0,:'CIT')}
add_period(1987,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14682967,6),0,Date::ITALY),nil,25200,0,:'WIT')}
end
end
end
end
