require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Ouagadougou < Timezone #:nodoc:
setup
set_identifier('Africa/Ouagadougou')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259094091,21600),0,Date::ITALY),-364,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259094091,21600),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
