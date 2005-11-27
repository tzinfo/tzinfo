require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Honolulu < Timezone #:nodoc:
setup
set_identifier('Pacific/Honolulu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(104328926143,43200),0,Date::ITALY),-37886,0,:'LMT')}
add_period(1900,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(104328926143,43200),0,Date::ITALY),DateTime.new0(Rational.new!(116505265,48),0,Date::ITALY),-37800,0,:'HST')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(116505265,48),0,Date::ITALY),DateTime.new0(Rational.new!(116506271,48),0,Date::ITALY),-37800,3600,:'HDT')}
add_period(1933,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(116506271,48),0,Date::ITALY),DateTime.new0(Rational.new!(116722991,48),0,Date::ITALY),-37800,3600,:'HT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(116722991,48),0,Date::ITALY),DateTime.new0(Rational.new!(116752561,48),0,Date::ITALY),-37800,0,:'HST')}
add_period(1947,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(116752561,48),0,Date::ITALY),nil,-36000,0,:'HST')}
end
end
end
end
