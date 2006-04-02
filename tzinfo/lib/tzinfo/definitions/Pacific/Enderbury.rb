require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Enderbury < Timezone #:nodoc:
setup
set_identifier('Pacific/Enderbury')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10434467413,4320),0,Date::ITALY),-41060,0,:LMT)}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10434467413,4320),0,Date::ITALY),307627200,-43200,0,:PHOT)}
add_period(1979,10) {TimezonePeriod.new(307627200,788958000,-39600,0,:PHOT)}
add_period(1995,1) {TimezonePeriod.new(788958000,nil,46800,0,:PHOT)}
end
end
end
end
