require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Colombo < Timezone #:nodoc:
setup
set_identifier('Asia/Colombo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17335550003,7200),0,Date::ITALY),19164,0,:LMT)}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(17335550003,7200),0,Date::ITALY),DateTime.new0(Rational.new!(52211763607,21600),0,Date::ITALY),19172,0,:MMT)}
add_period(1905,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52211763607,21600),0,Date::ITALY),DateTime.new0(Rational.new!(116657485,48),0,Date::ITALY),19800,0,:IST)}
add_period(1942,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(116657485,48),0,Date::ITALY),DateTime.new0(Rational.new!(9722413,4),0,Date::ITALY),19800,1800,:IHST)}
add_period(1942,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(9722413,4),0,Date::ITALY),DateTime.new0(Rational.new!(38907909,16),0,Date::ITALY),19800,3600,:IST)}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(38907909,16),0,Date::ITALY),832962600,19800,0,:IST)}
add_period(1996,5) {TimezonePeriod.new(832962600,846266400,23400,0,:LKT)}
add_period(1996,10) {TimezonePeriod.new(846266400,1144951200,21600,0,:LKT)}
add_period(2006,4) {TimezonePeriod.new(1144951200,nil,19800,0,:IST)}
end
end
end
end
