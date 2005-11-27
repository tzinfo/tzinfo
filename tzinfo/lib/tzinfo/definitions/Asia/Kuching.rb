require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuching < Timezone #:nodoc:
setup
set_identifier('Asia/Kuching')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(2618541209,1080),0,Date::ITALY),26480,0,:'LMT')}
add_period(1926,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(2618541209,1080),0,Date::ITALY),DateTime.new0(Rational.new!(38833171,16),0,Date::ITALY),27000,0,:'BORT')}
add_period(1932,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(38833171,16),0,Date::ITALY),DateTime.new0(Rational.new!(14568355,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1935,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14568355,6),0,Date::ITALY),DateTime.new0(Rational.new!(174826811,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1935,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174826811,72),0,Date::ITALY),DateTime.new0(Rational.new!(14570551,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1936,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14570551,6),0,Date::ITALY),DateTime.new0(Rational.new!(174853163,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1936,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174853163,72),0,Date::ITALY),DateTime.new0(Rational.new!(14572741,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1937,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14572741,6),0,Date::ITALY),DateTime.new0(Rational.new!(174879443,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1937,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174879443,72),0,Date::ITALY),DateTime.new0(Rational.new!(14574931,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1938,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14574931,6),0,Date::ITALY),DateTime.new0(Rational.new!(174905723,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1938,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174905723,72),0,Date::ITALY),DateTime.new0(Rational.new!(14577121,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14577121,6),0,Date::ITALY),DateTime.new0(Rational.new!(174932003,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1939,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174932003,72),0,Date::ITALY),DateTime.new0(Rational.new!(14579317,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1940,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14579317,6),0,Date::ITALY),DateTime.new0(Rational.new!(174958355,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1940,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174958355,72),0,Date::ITALY),DateTime.new0(Rational.new!(14581507,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1941,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(14581507,6),0,Date::ITALY),DateTime.new0(Rational.new!(174984635,72),0,Date::ITALY),28800,1200,:'BORTST')}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174984635,72),0,Date::ITALY),DateTime.new0(Rational.new!(14582437,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(14582437,6),0,Date::ITALY),DateTime.new0(Rational.new!(19453681,8),0,Date::ITALY),32400,0,:'JST')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(19453681,8),0,Date::ITALY),DateTime.new0(Rational.new!(14669821,6),0,Date::ITALY),28800,0,:'BORT')}
add_period(1981,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14669821,6),0,Date::ITALY),nil,28800,0,:'MYT')}
end
end
end
end
