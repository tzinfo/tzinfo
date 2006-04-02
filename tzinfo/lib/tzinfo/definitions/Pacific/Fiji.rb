require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Fiji < Timezone #:nodoc:
setup
set_identifier('Pacific/Fiji')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10457838739,4320),0,Date::ITALY),42820,0,:LMT)}
add_period(1915,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(10457838739,4320),0,Date::ITALY),909842400,43200,0,:FJT)}
add_period(1998,10) {TimezonePeriod.new(909842400,920124000,43200,3600,:FJST)}
add_period(1999,2) {TimezonePeriod.new(920124000,941896800,43200,0,:FJT)}
add_period(1999,11) {TimezonePeriod.new(941896800,951573600,43200,3600,:FJST)}
add_period(2000,2) {TimezonePeriod.new(951573600,nil,43200,0,:FJT)}
end
end
end
end
