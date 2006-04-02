require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class El_Aaiun < Timezone #:nodoc:
setup
set_identifier('Africa/El_Aaiun')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(728231561,300),0,Date::ITALY),-3168,0,:LMT)}
add_period(1934,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(728231561,300),0,Date::ITALY),198291600,-3600,0,:WAT)}
add_period(1976,4) {TimezonePeriod.new(198291600,nil,0,0,:WET)}
end
end
end
end
