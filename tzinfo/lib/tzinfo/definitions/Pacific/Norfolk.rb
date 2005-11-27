require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Norfolk < Timezone #:nodoc:
setup
set_identifier('Pacific/Norfolk')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26086158361,10800),0,Date::ITALY),40312,0,:'LMT')}
add_period(1900,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26086158361,10800),0,Date::ITALY),DateTime.new0(Rational.new!(73009411,30),0,Date::ITALY),40320,0,:'NMT')}
add_period(1950,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(73009411,30),0,Date::ITALY),nil,41400,0,:'NFT')}
end
end
end
end
