require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Barbados < Timezone #:nodoc:
setup
set_identifier('America/Barbados')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52353770377,21600),0,Date::ITALY),-14308,0,:LMT)}
add_period(1924,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52353770377,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52416885577,21600),0,Date::ITALY),-14308,0,:BMT)}
add_period(1932,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52416885577,21600),0,Date::ITALY),234943200,-14400,0,:AST)}
add_period(1977,6) {TimezonePeriod.new(234943200,244616400,-14400,3600,:ADT)}
add_period(1977,10) {TimezonePeriod.new(244616400,261554400,-14400,0,:AST)}
add_period(1978,4) {TimezonePeriod.new(261554400,276066000,-14400,3600,:ADT)}
add_period(1978,10) {TimezonePeriod.new(276066000,293004000,-14400,0,:AST)}
add_period(1979,4) {TimezonePeriod.new(293004000,307515600,-14400,3600,:ADT)}
add_period(1979,9) {TimezonePeriod.new(307515600,325058400,-14400,0,:AST)}
add_period(1980,4) {TimezonePeriod.new(325058400,338706000,-14400,3600,:ADT)}
add_period(1980,9) {TimezonePeriod.new(338706000,nil,-14400,0,:AST)}
end
end
end
end
