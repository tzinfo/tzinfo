require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Noronha < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Noronha')
add_period(TimezonePeriod.new(nil,DateTime.new(1914,1,1,2,9,40),-7780,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1914,1,1,2,9,40),DateTime.new(1931,10,3,13,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,3,13,0,0),DateTime.new(1932,4,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1932,4,1,1,0,0),DateTime.new(1932,10,3,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,3,2,0,0),DateTime.new(1933,4,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,1,1,0,0),DateTime.new(1949,12,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,1,2,0,0),DateTime.new(1950,4,16,2,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,16,2,0,0),DateTime.new(1950,12,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1950,12,1,2,0,0),DateTime.new(1951,4,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,1,1,0,0),DateTime.new(1951,12,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1951,12,1,2,0,0),DateTime.new(1952,4,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,1,1,0,0),DateTime.new(1952,12,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1952,12,1,2,0,0),DateTime.new(1953,3,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1953,3,1,1,0,0),DateTime.new(1963,12,9,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,9,2,0,0),DateTime.new(1964,3,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1964,3,1,1,0,0),DateTime.new(1965,1,31,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,31,2,0,0),DateTime.new(1965,3,31,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1965,3,31,1,0,0),DateTime.new(1965,12,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1965,12,1,2,0,0),DateTime.new(1966,3,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1966,3,1,1,0,0),DateTime.new(1966,11,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1966,11,1,2,0,0),DateTime.new(1967,3,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1967,3,1,1,0,0),DateTime.new(1967,11,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1967,11,1,2,0,0),DateTime.new(1968,3,1,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1968,3,1,1,0,0),DateTime.new(1985,11,2,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1985,11,2,2,0,0),DateTime.new(1986,3,15,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,15,1,0,0),DateTime.new(1986,10,25,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,25,2,0,0),DateTime.new(1987,2,14,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1987,2,14,1,0,0),DateTime.new(1987,10,25,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,25,2,0,0),DateTime.new(1988,2,7,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1988,2,7,1,0,0),DateTime.new(1988,10,16,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1988,10,16,2,0,0),DateTime.new(1989,1,29,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1989,1,29,1,0,0),DateTime.new(1989,10,15,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,15,2,0,0),DateTime.new(1990,2,11,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(1990,2,11,1,0,0),DateTime.new(1990,9,17,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1990,9,17,2,0,0),DateTime.new(1999,9,30,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1999,9,30,2,0,0),DateTime.new(1999,10,3,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(1999,10,3,2,0,0),DateTime.new(2000,2,27,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(2000,2,27,1,0,0),DateTime.new(2000,10,8,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(2000,10,8,2,0,0),DateTime.new(2000,10,15,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(2000,10,15,1,0,0),DateTime.new(2001,9,13,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(2001,9,13,2,0,0),DateTime.new(2001,10,14,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(2001,10,14,2,0,0),DateTime.new(2002,2,17,1,0,0),-7200,3600,'FNST'))
add_period(TimezonePeriod.new(DateTime.new(2002,2,17,1,0,0),DateTime.new(2002,10,1,2,0,0),-7200,0,'FNT'))
add_period(TimezonePeriod.new(DateTime.new(2002,10,1,2,0,0),nil,-7200,0,'FNT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
