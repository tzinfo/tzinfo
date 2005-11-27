require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Luanda < Timezone #:nodoc:
setup
set_identifier('Africa/Luanda')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26050663403,10800),0,Date::ITALY),3176,0,:'LMT')}
add_period(1891,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26050663403,10800),0,Date::ITALY),DateTime.new0(Rational.new!(52254341219,21600),0,Date::ITALY),3124,0,:'AOT')}
add_period(1911,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52254341219,21600),0,Date::ITALY),nil,3600,0,:'WAT')}
end
end
end
end
