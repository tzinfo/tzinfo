require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Rangoon < Timezone #:nodoc:
setup
set_identifier('Asia/Rangoon')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5200664903,2160),0,Date::ITALY),23080,0,:LMT)}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5200664903,2160),0,Date::ITALY),DateTime.new0(Rational.new!(5813578159,2400),0,Date::ITALY),23076,0,:RMT)}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(5813578159,2400),0,Date::ITALY),DateTime.new0(Rational.new!(116663051,48),0,Date::ITALY),23400,0,:BURT)}
add_period(1942,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(116663051,48),0,Date::ITALY),DateTime.new0(Rational.new!(19452625,8),0,Date::ITALY),32400,0,:JST)}
add_period(1945,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(19452625,8),0,Date::ITALY),nil,23400,0,:MMT)}
end
end
end
end
