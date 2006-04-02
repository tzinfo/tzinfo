require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Martinique < Timezone #:nodoc:
setup
set_identifier('America/Martinique')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10417112653,4320),0,Date::ITALY),-14660,0,:LMT)}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10417112653,4320),0,Date::ITALY),DateTime.new0(Rational.new!(10450761133,4320),0,Date::ITALY),-14660,0,:FFMT)}
add_period(1911,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(10450761133,4320),0,Date::ITALY),323841600,-14400,0,:AST)}
add_period(1980,4) {TimezonePeriod.new(323841600,338958000,-14400,3600,:ADT)}
add_period(1980,9) {TimezonePeriod.new(338958000,nil,-14400,0,:AST)}
end
end
end
end
