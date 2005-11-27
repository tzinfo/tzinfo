require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Macau < Timezone #:nodoc:
setup
set_identifier('Asia/Macau')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10451817437,4320),0,Date::ITALY),27260,0,:'LMT')}
add_period(1911,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(10451817437,4320),0,Date::ITALY),DateTime.new0(Rational.new!(38998037,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1961,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(38998037,16),0,Date::ITALY),DateTime.new0(Rational.new!(117005197,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1961,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117005197,48),0,Date::ITALY),DateTime.new0(Rational.new!(39003861,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1962,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(39003861,16),0,Date::ITALY),DateTime.new0(Rational.new!(117022669,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1962,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117022669,48),0,Date::ITALY),DateTime.new0(Rational.new!(14628631,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1963,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14628631,6),0,Date::ITALY),DateTime.new0(Rational.new!(117040141,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1963,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(117040141,48),0,Date::ITALY),DateTime.new0(Rational.new!(39015621,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(39015621,16),0,Date::ITALY),DateTime.new0(Rational.new!(117057613,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1964,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117057613,48),0,Date::ITALY),DateTime.new0(Rational.new!(14633041,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14633041,6),0,Date::ITALY),DateTime.new0(Rational.new!(19512513,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1965,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19512513,8),0,Date::ITALY),DateTime.new0(Rational.new!(39027717,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1966,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39027717,16),0,Date::ITALY),DateTime.new0(Rational.new!(117091885,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1966,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117091885,48),0,Date::ITALY),DateTime.new0(Rational.new!(39033541,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1967,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39033541,16),0,Date::ITALY),DateTime.new0(Rational.new!(117109693,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1967,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117109693,48),0,Date::ITALY),DateTime.new0(Rational.new!(39039477,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1968,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39039477,16),0,Date::ITALY),DateTime.new0(Rational.new!(117127165,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1968,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117127165,48),0,Date::ITALY),DateTime.new0(Rational.new!(39045301,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1969,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39045301,16),0,Date::ITALY),DateTime.new0(Rational.new!(117144637,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117144637,48),0,Date::ITALY),DateTime.new0(Rational.new!(39051125,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1970,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39051125,16),0,Date::ITALY),DateTime.new0(Rational.new!(117162109,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1970,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117162109,48),0,Date::ITALY),DateTime.new0(Rational.new!(39056949,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1971,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39056949,16),0,Date::ITALY),DateTime.new0(Rational.new!(117179581,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1971,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117179581,48),0,Date::ITALY),DateTime.new0(Rational.new!(14648539,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1972,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14648539,6),0,Date::ITALY),DateTime.new0(Rational.new!(19532841,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1972,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19532841,8),0,Date::ITALY),DateTime.new0(Rational.new!(14650723,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1973,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14650723,6),0,Date::ITALY),DateTime.new0(Rational.new!(19535809,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1973,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19535809,8),0,Date::ITALY),DateTime.new0(Rational.new!(14652949,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1974,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14652949,6),0,Date::ITALY),DateTime.new0(Rational.new!(117232333,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1974,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117232333,48),0,Date::ITALY),DateTime.new0(Rational.new!(39080357,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1975,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39080357,16),0,Date::ITALY),DateTime.new0(Rational.new!(117249805,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1975,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117249805,48),0,Date::ITALY),DateTime.new0(Rational.new!(39086181,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1976,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39086181,16),0,Date::ITALY),DateTime.new0(Rational.new!(117267277,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1976,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117267277,48),0,Date::ITALY),DateTime.new0(Rational.new!(39092005,16),0,Date::ITALY),28800,0,:'MOT')}
add_period(1977,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(39092005,16),0,Date::ITALY),DateTime.new0(Rational.new!(117284749,48),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1977,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117284749,48),0,Date::ITALY),DateTime.new0(Rational.new!(14661685,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1978,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14661685,6),0,Date::ITALY),DateTime.new0(Rational.new!(19550369,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1978,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19550369,8),0,Date::ITALY),DateTime.new0(Rational.new!(14663869,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1979,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14663869,6),0,Date::ITALY),DateTime.new0(Rational.new!(19553337,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1979,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19553337,8),0,Date::ITALY),DateTime.new0(Rational.new!(14666095,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14666095,6),0,Date::ITALY),DateTime.new0(Rational.new!(19556249,8),0,Date::ITALY),28800,3600,:'MOST')}
add_period(1980,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(19556249,8),0,Date::ITALY),DateTime.new0(Rational.new!(14709193,6),0,Date::ITALY),28800,0,:'MOT')}
add_period(1999,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(14709193,6),0,Date::ITALY),nil,28800,0,:'CT')}
end
end
end
end
