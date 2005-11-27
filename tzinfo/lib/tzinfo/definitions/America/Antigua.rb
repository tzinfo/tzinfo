require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Antigua < Timezone #:nodoc:
setup
set_identifier('America/Antigua')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1451678203,600),0,Date::ITALY),-14832,0,:'LMT')}
add_period(1912,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(1451678203,600),0,Date::ITALY),DateTime.new0(Rational.new!(58407545,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1951,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58407545,24),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
