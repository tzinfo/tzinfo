require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Jamaica < Timezone #:nodoc:
setup
set_identifier('America/Jamaica')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,7,12),-18432,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,7,12),DateTime.new(1912,2,1,5,7,12),-18432,0,:'KMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,2,1,5,7,12),DateTime.new(1974,4,28,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1974,4,28,7,0,0),DateTime.new(1975,2,23,7,0,0),-18000,0,:'ET'))
add_period(TimezonePeriod.new(DateTime.new(1975,2,23,7,0,0),DateTime.new(1975,10,26,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1975,10,26,6,0,0),DateTime.new(1976,4,25,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1976,4,25,7,0,0),DateTime.new(1976,10,31,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1976,10,31,6,0,0),DateTime.new(1977,4,24,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1977,4,24,7,0,0),DateTime.new(1977,10,30,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1977,10,30,6,0,0),DateTime.new(1978,4,30,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,30,7,0,0),DateTime.new(1978,10,29,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1978,10,29,6,0,0),DateTime.new(1979,4,29,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1979,4,29,7,0,0),DateTime.new(1979,10,28,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,28,6,0,0),DateTime.new(1980,4,27,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,27,7,0,0),DateTime.new(1980,10,26,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1980,10,26,6,0,0),DateTime.new(1981,4,26,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1981,4,26,7,0,0),DateTime.new(1981,10,25,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1981,10,25,6,0,0),DateTime.new(1982,4,25,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1982,4,25,7,0,0),DateTime.new(1982,10,31,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1982,10,31,6,0,0),DateTime.new(1983,4,24,7,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1983,4,24,7,0,0),DateTime.new(1983,10,30,6,0,0),-18000,3600,:'EDT'))
add_period(TimezonePeriod.new(DateTime.new(1983,10,30,6,0,0),DateTime.new(1984,1,1,5,0,0),-18000,0,:'EST'))
add_period(TimezonePeriod.new(DateTime.new(1984,1,1,5,0,0),nil,-18000,0,:'EST'))
end
end
end
end
