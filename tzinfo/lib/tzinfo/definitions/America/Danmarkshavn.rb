require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Danmarkshavn < Timezone #:nodoc:
setup
set_identifier('America/Danmarkshavn')
add_period(TimezonePeriod.new(nil,DateTime.new(1916,7,28,1,14,40),-4480,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1916,7,28,1,14,40),DateTime.new(1980,4,6,5,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,6,1,0,0),DateTime.new(1980,9,28,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1980,9,28,1,0,0),DateTime.new(1981,3,29,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1981,3,29,1,0,0),DateTime.new(1981,9,27,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1981,9,27,1,0,0),DateTime.new(1982,3,28,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1982,3,28,1,0,0),DateTime.new(1982,9,26,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1982,9,26,1,0,0),DateTime.new(1983,3,27,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1983,3,27,1,0,0),DateTime.new(1983,9,25,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,25,1,0,0),DateTime.new(1984,3,25,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,25,1,0,0),DateTime.new(1984,9,30,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1984,9,30,1,0,0),DateTime.new(1985,3,31,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1985,3,31,1,0,0),DateTime.new(1985,9,29,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1985,9,29,1,0,0),DateTime.new(1986,3,30,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,30,1,0,0),DateTime.new(1986,9,28,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1986,9,28,1,0,0),DateTime.new(1987,3,29,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,29,1,0,0),DateTime.new(1987,9,27,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,27,1,0,0),DateTime.new(1988,3,27,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,27,1,0,0),DateTime.new(1988,9,25,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,25,1,0,0),DateTime.new(1989,3,26,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,26,1,0,0),DateTime.new(1989,9,24,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,24,1,0,0),DateTime.new(1990,3,25,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,25,1,0,0),DateTime.new(1990,9,30,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,30,1,0,0),DateTime.new(1991,3,31,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,31,1,0,0),DateTime.new(1991,9,29,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1991,9,29,1,0,0),DateTime.new(1992,3,29,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1992,3,29,1,0,0),DateTime.new(1992,9,27,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1992,9,27,1,0,0),DateTime.new(1993,3,28,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1993,3,28,1,0,0),DateTime.new(1993,9,26,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1993,9,26,1,0,0),DateTime.new(1994,3,27,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1994,3,27,1,0,0),DateTime.new(1994,9,25,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1994,9,25,1,0,0),DateTime.new(1995,3,26,1,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1995,3,26,1,0,0),DateTime.new(1995,9,24,1,0,0),-10800,3600,:'WGST'))
add_period(TimezonePeriod.new(DateTime.new(1995,9,24,1,0,0),DateTime.new(1996,1,1,3,0,0),-10800,0,:'WGT'))
add_period(TimezonePeriod.new(DateTime.new(1996,1,1,3,0,0),nil,0,0,:'GMT'))
end
end
end
end
