require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Brazzaville < Timezone #:nodoc:
setup
set_identifier('Africa/Brazzaville')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259093083,21600),0,Date::ITALY),3668,0,:'LMT')}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259093083,21600),0,Date::ITALY),nil,3600,0,:'WAT')}
end
end
end
end
