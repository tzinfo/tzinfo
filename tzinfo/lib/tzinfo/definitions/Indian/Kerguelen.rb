require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Kerguelen < Timezone #:nodoc:
setup
set_identifier('Indian/Kerguelen')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4866565,2),0,Date::ITALY),0,0,:'zzz')}
add_period(1950,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4866565,2),0,Date::ITALY),nil,18000,0,:'TFT')}
end
end
end
end
