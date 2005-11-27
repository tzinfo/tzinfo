require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Vientiane < Timezone #:nodoc:
setup
set_identifier('Asia/Vientiane')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(483474043,200),0,Date::ITALY),24624,0,:'LMT')}
add_period(1906,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(483474043,200),0,Date::ITALY),DateTime.new0(Rational.new!(2612634701,1080),0,Date::ITALY),25580,0,:'SMT')}
add_period(1911,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2612634701,1080),0,Date::ITALY),DateTime.new0(Rational.new!(58068557,24),0,Date::ITALY),25200,0,:'ICT')}
add_period(1912,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58068557,24),0,Date::ITALY),DateTime.new0(Rational.new!(14558773,6),0,Date::ITALY),28800,0,:'ICT')}
add_period(1931,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14558773,6),0,Date::ITALY),nil,25200,0,:'ICT')}
end
end
end
end
