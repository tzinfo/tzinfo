require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Dominica < Timezone #:nodoc:
setup
set_identifier('America/Dominica')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(1935374937,800),0,Date::ITALY),-14736,0,:LMT)}
add_period(1911,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(1935374937,800),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
