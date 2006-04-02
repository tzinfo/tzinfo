require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guayaquil < Timezone #:nodoc:
setup
set_identifier('America/Guayaquil')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(5208556439,2160),0,Date::ITALY),-19160,0,:LMT)}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(5208556439,2160),0,Date::ITALY),DateTime.new0(Rational.new!(1746966757,720),0,Date::ITALY),-18840,0,:QMT)}
add_period(1931,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(1746966757,720),0,Date::ITALY),nil,-18000,0,:ECT)}
end
end
end
end
