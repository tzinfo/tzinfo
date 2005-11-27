require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Pitcairn < Timezone #:nodoc:
setup
set_identifier('Pacific/Pitcairn')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10434466921,4320),0,Date::ITALY),-31220,0,:'LMT')}
add_period(1901,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10434466921,4320),0,Date::ITALY),DateTime.new0(Rational.new!(117644681,48),0,Date::ITALY),-30600,0,:'PNT')}
add_period(1998,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(117644681,48),0,Date::ITALY),nil,-28800,0,:'PST')}
end
end
end
end
