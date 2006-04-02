require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Ndjamena < Timezone #:nodoc:
setup
set_identifier('Africa/Ndjamena')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17419697699,7200),0,Date::ITALY),3612,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(17419697699,7200),0,Date::ITALY),308703600,3600,0,:WAT)}
add_period(1979,10) {TimezonePeriod.new(308703600,321314400,3600,3600,:WAST)}
add_period(1980,3) {TimezonePeriod.new(321314400,nil,3600,0,:WAT)}
end
end
end
end
