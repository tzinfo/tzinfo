require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Thimphu < Timezone #:nodoc:
setup
set_identifier('Asia/Thimphu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17513368207,7200),0,Date::ITALY),21516,0,:LMT)}
add_period(1947,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(17513368207,7200),0,Date::ITALY),560025000,19800,0,:IST)}
add_period(1987,9) {TimezonePeriod.new(560025000,nil,21600,0,:BTT)}
end
end
end
end
