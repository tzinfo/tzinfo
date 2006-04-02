require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Niue < Timezone #:nodoc:
setup
set_identifier('Pacific/Niue')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10434467399,4320),0,Date::ITALY),-40780,0,:LMT)}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10434467399,4320),0,Date::ITALY),DateTime.new0(Rational.new!(87611327,36),0,Date::ITALY),-40800,0,:NUT)}
add_period(1951,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(87611327,36),0,Date::ITALY),276089400,-41400,0,:NUT)}
add_period(1978,10) {TimezonePeriod.new(276089400,nil,-39600,0,:NUT)}
end
end
end
end
