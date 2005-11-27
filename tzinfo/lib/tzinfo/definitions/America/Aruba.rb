require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Aruba < Timezone #:nodoc:
setup
set_identifier('America/Aruba')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(8710000901,3600),0,Date::ITALY),-16824,0,:'LMT')}
add_period(1912,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(8710000901,3600),0,Date::ITALY),DateTime.new0(Rational.new!(39020187,16),0,Date::ITALY),-16200,0,:'ANT')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(39020187,16),0,Date::ITALY),nil,-14400,0,:'AST')}
end
end
end
end
