require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Aden < Timezone #:nodoc:
setup
set_identifier('Asia/Aden')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2189954137,900),0,Date::ITALY),10848,0,:LMT)}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(2189954137,900),0,Date::ITALY),nil,10800,0,:AST)}
end
end
end
end
