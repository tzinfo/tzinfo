require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Paramaribo < Timezone #:nodoc:
setup
set_identifier('America/Paramaribo')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5225121331,2160),0,Date::ITALY),-13240,0,:LMT)}
add_period(1911,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(5225121331,2160),0,Date::ITALY),DateTime.new0(Rational.new!(52440558913,21600),0,Date::ITALY),-13252,0,:PMT)}
add_period(1935,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52440558913,21600),0,Date::ITALY),DateTime.new0(Rational.new!(17508453503,7200),0,Date::ITALY),-13236,0,:PMT)}
add_period(1945,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(17508453503,7200),0,Date::ITALY),185686200,-12600,0,:NEGT)}
add_period(1975,11) {TimezonePeriod.new(185686200,465449400,-12600,0,:SRT)}
add_period(1984,10) {TimezonePeriod.new(465449400,nil,-10800,0,:SRT)}
end
end
end
end
