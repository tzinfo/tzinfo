require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Bahia < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Bahia')
add_period(TimezonePeriod.new(nil,DateTime.new(1914,1,1,2,34,4),-9244,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1914,1,1,2,34,4),DateTime.new(1931,10,3,14,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,3,14,0,0),DateTime.new(1932,4,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1932,4,1,2,0,0),DateTime.new(1932,10,3,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,3,3,0,0),DateTime.new(1933,4,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,1,2,0,0),DateTime.new(1949,12,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,1,3,0,0),DateTime.new(1950,4,16,3,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,16,3,0,0),DateTime.new(1950,12,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1950,12,1,3,0,0),DateTime.new(1951,4,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,1,2,0,0),DateTime.new(1951,12,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1951,12,1,3,0,0),DateTime.new(1952,4,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,1,2,0,0),DateTime.new(1952,12,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1952,12,1,3,0,0),DateTime.new(1953,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1953,3,1,2,0,0),DateTime.new(1963,12,9,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,9,3,0,0),DateTime.new(1964,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1964,3,1,2,0,0),DateTime.new(1965,1,31,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,31,3,0,0),DateTime.new(1965,3,31,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1965,3,31,2,0,0),DateTime.new(1965,12,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1965,12,1,3,0,0),DateTime.new(1966,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1966,3,1,2,0,0),DateTime.new(1966,11,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1966,11,1,3,0,0),DateTime.new(1967,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1967,3,1,2,0,0),DateTime.new(1967,11,1,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1967,11,1,3,0,0),DateTime.new(1968,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1968,3,1,2,0,0),DateTime.new(1985,11,2,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1985,11,2,3,0,0),DateTime.new(1986,3,15,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1986,3,15,2,0,0),DateTime.new(1986,10,25,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,25,3,0,0),DateTime.new(1987,2,14,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1987,2,14,2,0,0),DateTime.new(1987,10,25,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1987,10,25,3,0,0),DateTime.new(1988,2,7,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1988,2,7,2,0,0),DateTime.new(1988,10,16,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1988,10,16,3,0,0),DateTime.new(1989,1,29,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1989,1,29,2,0,0),DateTime.new(1989,10,15,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,15,3,0,0),DateTime.new(1990,2,11,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1990,2,11,2,0,0),DateTime.new(1990,10,21,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1990,10,21,3,0,0),DateTime.new(1991,2,17,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1991,2,17,2,0,0),DateTime.new(1991,10,20,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1991,10,20,3,0,0),DateTime.new(1992,2,9,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1992,2,9,2,0,0),DateTime.new(1992,10,25,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1992,10,25,3,0,0),DateTime.new(1993,1,31,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1993,1,31,2,0,0),DateTime.new(1993,10,17,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1993,10,17,3,0,0),DateTime.new(1994,2,20,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1994,2,20,2,0,0),DateTime.new(1994,10,16,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1994,10,16,3,0,0),DateTime.new(1995,2,19,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1995,2,19,2,0,0),DateTime.new(1995,10,15,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1995,10,15,3,0,0),DateTime.new(1996,2,11,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1996,2,11,2,0,0),DateTime.new(1996,10,6,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1996,10,6,3,0,0),DateTime.new(1997,2,16,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1997,2,16,2,0,0),DateTime.new(1997,10,6,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1997,10,6,3,0,0),DateTime.new(1998,3,1,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1998,3,1,2,0,0),DateTime.new(1998,10,11,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1998,10,11,3,0,0),DateTime.new(1999,2,21,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(1999,2,21,2,0,0),DateTime.new(1999,10,3,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(1999,10,3,3,0,0),DateTime.new(2000,2,27,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(2000,2,27,2,0,0),DateTime.new(2000,10,8,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(2000,10,8,3,0,0),DateTime.new(2001,2,18,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(2001,2,18,2,0,0),DateTime.new(2001,10,14,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(2001,10,14,3,0,0),DateTime.new(2002,2,17,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(2002,2,17,2,0,0),DateTime.new(2002,11,3,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(2002,11,3,3,0,0),DateTime.new(2003,2,16,2,0,0),-10800,3600,'BRST'))
add_period(TimezonePeriod.new(DateTime.new(2003,2,16,2,0,0),DateTime.new(2003,9,24,3,0,0),-10800,0,'BRT'))
add_period(TimezonePeriod.new(DateTime.new(2003,9,24,3,0,0),nil,-10800,0,'BRT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
