require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Asmera < Timezone #:nodoc:
setup
set_identifier('Africa/Asmera')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(51927769267,21600),0,Date::ITALY),9332,0,:'LMT')}
add_period(1869,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(51927769267,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52085557267,21600),0,Date::ITALY),9332,0,:'AMT')}
add_period(1889,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52085557267,21600),0,Date::ITALY),DateTime.new0(Rational.new!(5245113727,2160),0,Date::ITALY),9320,0,:'ADMT')}
add_period(1936,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(5245113727,2160),0,Date::ITALY),nil,10800,0,:'EAT')}
end
end
end
end
