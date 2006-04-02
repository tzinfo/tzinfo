require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Accra < Timezone #:nodoc:
setup
set_identifier('Africa/Accra')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52306441213,21600),0,Date::ITALY),-52,0,:LMT)}
add_period(1918,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52306441213,21600),0,Date::ITALY),DateTime.new0(Rational.new!(4856825,2),0,Date::ITALY),0,0,:GMT)}
add_period(1936,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4856825,2),0,Date::ITALY),DateTime.new0(Rational.new!(174854411,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1936,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174854411,72),0,Date::ITALY),DateTime.new0(Rational.new!(4857555,2),0,Date::ITALY),0,0,:GMT)}
add_period(1937,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4857555,2),0,Date::ITALY),DateTime.new0(Rational.new!(174880691,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1937,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174880691,72),0,Date::ITALY),DateTime.new0(Rational.new!(4858285,2),0,Date::ITALY),0,0,:GMT)}
add_period(1938,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4858285,2),0,Date::ITALY),DateTime.new0(Rational.new!(174906971,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1938,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174906971,72),0,Date::ITALY),DateTime.new0(Rational.new!(4859015,2),0,Date::ITALY),0,0,:GMT)}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4859015,2),0,Date::ITALY),DateTime.new0(Rational.new!(174933251,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1939,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174933251,72),0,Date::ITALY),DateTime.new0(Rational.new!(4859747,2),0,Date::ITALY),0,0,:GMT)}
add_period(1940,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4859747,2),0,Date::ITALY),DateTime.new0(Rational.new!(174959603,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1940,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174959603,72),0,Date::ITALY),DateTime.new0(Rational.new!(4860477,2),0,Date::ITALY),0,0,:GMT)}
add_period(1941,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4860477,2),0,Date::ITALY),DateTime.new0(Rational.new!(174985883,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1941,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(174985883,72),0,Date::ITALY),DateTime.new0(Rational.new!(4861207,2),0,Date::ITALY),0,0,:GMT)}
add_period(1942,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(4861207,2),0,Date::ITALY),DateTime.new0(Rational.new!(175012163,72),0,Date::ITALY),0,1200,:GHST)}
add_period(1942,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(175012163,72),0,Date::ITALY),nil,0,0,:GMT)}
end
end
end
end
