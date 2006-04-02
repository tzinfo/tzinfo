require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Anguilla < Timezone #:nodoc:
setup
set_identifier('America/Anguilla')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(6532551923,2700),0,Date::ITALY),-15136,0,:LMT)}
add_period(1912,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(6532551923,2700),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
