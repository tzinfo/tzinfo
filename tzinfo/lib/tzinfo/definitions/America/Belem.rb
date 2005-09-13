require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Belem < Timezone #:nodoc:
setup
set_identifier('America/Belem')
add_period(TimezonePeriod.new(nil,DateTime.new(1914,1,1,3,13,56),-11636,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1914,1,1,3,13,56),DateTime.new(1931,10,3,14,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,3,14,0,0),DateTime.new(1932,4,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1932,4,1,2,0,0),DateTime.new(1932,10,3,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,3,3,0,0),DateTime.new(1933,4,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,1,2,0,0),DateTime.new(1949,12,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,1,3,0,0),DateTime.new(1950,4,16,3,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,16,3,0,0),DateTime.new(1950,12,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1950,12,1,3,0,0),DateTime.new(1951,4,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,1,2,0,0),DateTime.new(1951,12,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1951,12,1,3,0,0),DateTime.new(1952,4,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,1,2,0,0),DateTime.new(1952,12,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1952,12,1,3,0,0),DateTime.new(1953,3,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1953,3,1,2,0,0),DateTime.new(1963,12,9,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,9,3,0,0),DateTime.new(1964,3,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1964,3,1,2,0,0),DateTime.new(1965,1,31,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,31,3,0,0),DateTime.new(1965,3,31,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1965,3,31,2,0,0),DateTime.new(1965,12,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1965,12,1,3,0,0),DateTime.new(1966,3,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1966,3,1,2,0,0),DateTime.new(1966,11,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1966,11,1,3,0,0),DateTime.new(1967,3,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1967,3,1,2,0,0),DateTime.new(1967,11,1,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1967,11,1,3,0,0),DateTime.new(1968,3,1,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1968,3,1,2,0,0),DateTime.new(1985,11,2,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1985,11,2,3,0,0),DateTime.new(1986,3,15,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,15,2,0,0),DateTime.new(1986,10,25,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,25,3,0,0),DateTime.new(1987,2,14,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1987,2,14,2,0,0),DateTime.new(1987,10,25,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,25,3,0,0),DateTime.new(1988,2,7,2,0,0),-10800,3600,:'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1988,2,7,2,0,0),DateTime.new(1988,9,12,3,0,0),-10800,0,:'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,12,3,0,0),nil,-10800,0,:'BRT'))
end
end
end
end
