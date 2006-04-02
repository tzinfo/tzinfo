require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kinshasa < Timezone #:nodoc:
setup
set_identifier('Africa/Kinshasa')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(965694983,400),0,Date::ITALY),3672,0,:LMT)}
add_period(1897,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(965694983,400),0,Date::ITALY),nil,3600,0,:WAT)}
end
end
end
end
