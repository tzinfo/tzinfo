require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Thomas < Timezone #:nodoc:
setup
set_identifier('America/St_Thomas')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(6531890437,2700),0,Date::ITALY),-15584,0,:LMT)}
add_period(1911,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(6531890437,2700),0,Date::ITALY),nil,-14400,0,:AST)}
end
end
end
end
