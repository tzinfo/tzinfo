require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Macau < Timezone #:nodoc:
setup
set_identifier('Asia/Macau')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10451817437,4320),0,Date::ITALY),27260,0,:LMT)}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10451817437,4320),0,Date::ITALY),DateTime.new0(Rational.new!(38998037,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1961,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(38998037,16),0,Date::ITALY),DateTime.new0(Rational.new!(117005197,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1961,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117005197,48),0,Date::ITALY),DateTime.new0(Rational.new!(39003861,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1962,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(39003861,16),0,Date::ITALY),DateTime.new0(Rational.new!(117022669,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1962,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117022669,48),0,Date::ITALY),DateTime.new0(Rational.new!(14628631,6),0,Date::ITALY),28800,0,:MOT)}
add_period(1963,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14628631,6),0,Date::ITALY),DateTime.new0(Rational.new!(117040141,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1963,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117040141,48),0,Date::ITALY),DateTime.new0(Rational.new!(39015621,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(39015621,16),0,Date::ITALY),DateTime.new0(Rational.new!(117057613,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117057613,48),0,Date::ITALY),DateTime.new0(Rational.new!(14633041,6),0,Date::ITALY),28800,0,:MOT)}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14633041,6),0,Date::ITALY),DateTime.new0(Rational.new!(19512513,8),0,Date::ITALY),28800,3600,:MOST)}
add_period(1965,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19512513,8),0,Date::ITALY),DateTime.new0(Rational.new!(39027717,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1966,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39027717,16),0,Date::ITALY),DateTime.new0(Rational.new!(117091885,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117091885,48),0,Date::ITALY),DateTime.new0(Rational.new!(39033541,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39033541,16),0,Date::ITALY),DateTime.new0(Rational.new!(117109693,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117109693,48),0,Date::ITALY),DateTime.new0(Rational.new!(39039477,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1968,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39039477,16),0,Date::ITALY),DateTime.new0(Rational.new!(117127165,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1968,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117127165,48),0,Date::ITALY),DateTime.new0(Rational.new!(39045301,16),0,Date::ITALY),28800,0,:MOT)}
add_period(1969,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39045301,16),0,Date::ITALY),DateTime.new0(Rational.new!(117144637,48),0,Date::ITALY),28800,3600,:MOST)}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117144637,48),0,Date::ITALY),9315000,28800,0,:MOT)}
add_period(1970,4) {TimezonePeriod.new(9315000,25036200,28800,3600,:MOST)}
add_period(1970,10) {TimezonePeriod.new(25036200,40764600,28800,0,:MOT)}
add_period(1971,4) {TimezonePeriod.new(40764600,56485800,28800,3600,:MOST)}
add_period(1971,10) {TimezonePeriod.new(56485800,72201600,28800,0,:MOT)}
add_period(1972,4) {TimezonePeriod.new(72201600,87922800,28800,3600,:MOST)}
add_period(1972,10) {TimezonePeriod.new(87922800,103651200,28800,0,:MOT)}
add_period(1973,4) {TimezonePeriod.new(103651200,119977200,28800,3600,:MOST)}
add_period(1973,10) {TimezonePeriod.new(119977200,135705600,28800,0,:MOT)}
add_period(1974,4) {TimezonePeriod.new(135705600,151439400,28800,3600,:MOST)}
add_period(1974,10) {TimezonePeriod.new(151439400,167167800,28800,0,:MOT)}
add_period(1975,4) {TimezonePeriod.new(167167800,182889000,28800,3600,:MOST)}
add_period(1975,10) {TimezonePeriod.new(182889000,198617400,28800,0,:MOT)}
add_period(1976,4) {TimezonePeriod.new(198617400,214338600,28800,3600,:MOST)}
add_period(1976,10) {TimezonePeriod.new(214338600,230067000,28800,0,:MOT)}
add_period(1977,4) {TimezonePeriod.new(230067000,245788200,28800,3600,:MOST)}
add_period(1977,10) {TimezonePeriod.new(245788200,261504000,28800,0,:MOT)}
add_period(1978,4) {TimezonePeriod.new(261504000,277225200,28800,3600,:MOST)}
add_period(1978,10) {TimezonePeriod.new(277225200,292953600,28800,0,:MOT)}
add_period(1979,4) {TimezonePeriod.new(292953600,309279600,28800,3600,:MOST)}
add_period(1979,10) {TimezonePeriod.new(309279600,325008000,28800,0,:MOT)}
add_period(1980,4) {TimezonePeriod.new(325008000,340729200,28800,3600,:MOST)}
add_period(1980,10) {TimezonePeriod.new(340729200,945619200,28800,0,:MOT)}
add_period(1999,12) {TimezonePeriod.new(945619200,nil,28800,0,:CST)}
end
end
end
end
