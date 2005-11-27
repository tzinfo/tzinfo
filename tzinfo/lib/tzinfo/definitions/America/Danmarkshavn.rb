require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Danmarkshavn < Timezone #:nodoc:
setup
set_identifier('America/Danmarkshavn')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(653689589,270),0,Date::ITALY),-4480,0,:'LMT')}
add_period(1916,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(653689589,270),0,Date::ITALY),DateTime.new0(Rational.new!(58664057,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1980,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58664053,24),0,Date::ITALY),DateTime.new0(Rational.new!(58668253,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1980,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58668253,24),0,Date::ITALY),DateTime.new0(Rational.new!(58672621,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58672621,24),0,Date::ITALY),DateTime.new0(Rational.new!(58676989,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58676989,24),0,Date::ITALY),DateTime.new0(Rational.new!(58681357,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58681357,24),0,Date::ITALY),DateTime.new0(Rational.new!(58685725,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58685725,24),0,Date::ITALY),DateTime.new0(Rational.new!(58690093,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58690093,24),0,Date::ITALY),DateTime.new0(Rational.new!(58694461,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58694461,24),0,Date::ITALY),DateTime.new0(Rational.new!(58698829,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58698829,24),0,Date::ITALY),DateTime.new0(Rational.new!(58703365,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58703365,24),0,Date::ITALY),DateTime.new0(Rational.new!(58707733,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58707733,24),0,Date::ITALY),DateTime.new0(Rational.new!(58712101,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58712101,24),0,Date::ITALY),DateTime.new0(Rational.new!(58716469,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58716469,24),0,Date::ITALY),DateTime.new0(Rational.new!(58720837,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58720837,24),0,Date::ITALY),DateTime.new0(Rational.new!(58725205,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58725205,24),0,Date::ITALY),DateTime.new0(Rational.new!(58729573,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58729573,24),0,Date::ITALY),DateTime.new0(Rational.new!(58733941,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58733941,24),0,Date::ITALY),DateTime.new0(Rational.new!(58738309,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58738309,24),0,Date::ITALY),DateTime.new0(Rational.new!(58742677,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58742677,24),0,Date::ITALY),DateTime.new0(Rational.new!(58747045,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58747045,24),0,Date::ITALY),DateTime.new0(Rational.new!(58751413,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58751413,24),0,Date::ITALY),DateTime.new0(Rational.new!(58755949,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58755949,24),0,Date::ITALY),DateTime.new0(Rational.new!(58760317,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58760317,24),0,Date::ITALY),DateTime.new0(Rational.new!(58764685,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58764685,24),0,Date::ITALY),DateTime.new0(Rational.new!(58769053,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58769053,24),0,Date::ITALY),DateTime.new0(Rational.new!(58773421,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58773421,24),0,Date::ITALY),DateTime.new0(Rational.new!(58777789,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1993,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58777789,24),0,Date::ITALY),DateTime.new0(Rational.new!(58782157,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58782157,24),0,Date::ITALY),DateTime.new0(Rational.new!(58786525,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1994,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58786525,24),0,Date::ITALY),DateTime.new0(Rational.new!(58790893,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58790893,24),0,Date::ITALY),DateTime.new0(Rational.new!(58795261,24),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1995,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58795261,24),0,Date::ITALY),DateTime.new0(Rational.new!(58799629,24),0,Date::ITALY),-10800,3600,:'WGST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58799629,24),0,Date::ITALY),DateTime.new0(Rational.new!(19600669,8),0,Date::ITALY),-10800,0,:'WGT')}
add_period(1996,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(19600669,8),0,Date::ITALY),nil,0,0,:'GMT')}
end
end
end
end
