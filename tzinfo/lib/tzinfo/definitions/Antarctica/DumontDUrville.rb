require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class DumontDUrville < Timezone #:nodoc:
setup
set_identifier('Antarctica/DumontDUrville')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4864373,2),0,Date::ITALY),0,0,:zzz)}
add_period(1947,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(4864373,2),0,Date::ITALY),DateTime.new0(Rational.new!(29208301,12),0,Date::ITALY),36000,0,:PMT)}
add_period(1952,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29208301,12),0,Date::ITALY),DateTime.new0(Rational.new!(4871557,2),0,Date::ITALY),0,0,:zzz)}
add_period(1956,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(4871557,2),0,Date::ITALY),nil,36000,0,:DDUT)}
end
end
end
end
