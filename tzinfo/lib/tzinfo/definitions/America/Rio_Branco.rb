require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Rio_Branco < Timezone #:nodoc:
setup
set_identifier('America/Rio_Branco')
add_period(TimezonePeriod.new(nil,DateTime.new(1914,1,1,4,31,12),-16272,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1914,1,1,4,31,12),DateTime.new(1931,10,3,16,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,3,16,0,0),DateTime.new(1932,4,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1932,4,1,4,0,0),DateTime.new(1932,10,3,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,3,5,0,0),DateTime.new(1933,4,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,1,4,0,0),DateTime.new(1949,12,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,1,5,0,0),DateTime.new(1950,4,16,5,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,16,5,0,0),DateTime.new(1950,12,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1950,12,1,5,0,0),DateTime.new(1951,4,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,1,4,0,0),DateTime.new(1951,12,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1951,12,1,5,0,0),DateTime.new(1952,4,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,1,4,0,0),DateTime.new(1952,12,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1952,12,1,5,0,0),DateTime.new(1953,3,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1953,3,1,4,0,0),DateTime.new(1963,12,9,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,9,5,0,0),DateTime.new(1964,3,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1964,3,1,4,0,0),DateTime.new(1965,1,31,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,31,5,0,0),DateTime.new(1965,3,31,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1965,3,31,4,0,0),DateTime.new(1965,12,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1965,12,1,5,0,0),DateTime.new(1966,3,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1966,3,1,4,0,0),DateTime.new(1966,11,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1966,11,1,5,0,0),DateTime.new(1967,3,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1967,3,1,4,0,0),DateTime.new(1967,11,1,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1967,11,1,5,0,0),DateTime.new(1968,3,1,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1968,3,1,4,0,0),DateTime.new(1985,11,2,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1985,11,2,5,0,0),DateTime.new(1986,3,15,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,15,4,0,0),DateTime.new(1986,10,25,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,25,5,0,0),DateTime.new(1987,2,14,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1987,2,14,4,0,0),DateTime.new(1987,10,25,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,25,5,0,0),DateTime.new(1988,2,7,4,0,0),-18000,3600,:'ACST'))
add_period(TimezonePeriod.new(DateTime.new(1988,2,7,4,0,0),DateTime.new(1988,9,12,5,0,0),-18000,0,:'ACT'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,12,5,0,0),nil,-18000,0,:'ACT'))
end
end
end
end
