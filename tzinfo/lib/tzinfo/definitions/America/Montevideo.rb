require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Montevideo < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Montevideo')
add_period(TimezonePeriod.new(nil,DateTime.new(1898,6,28,3,44,44),-13484,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1898,6,28,3,44,44),DateTime.new(1920,5,1,3,44,44),-13484,0,'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1920,5,1,3,44,44),DateTime.new(1923,10,2,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1923,10,2,3,30,0),DateTime.new(1924,4,1,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1924,4,1,3,0,0),DateTime.new(1924,10,1,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1924,10,1,3,30,0),DateTime.new(1925,4,1,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1925,4,1,3,0,0),DateTime.new(1925,10,1,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1925,10,1,3,30,0),DateTime.new(1926,4,1,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1926,4,1,3,0,0),DateTime.new(1933,10,29,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1933,10,29,3,30,0),DateTime.new(1934,4,1,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1934,4,1,3,0,0),DateTime.new(1934,10,28,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1934,10,28,3,30,0),DateTime.new(1935,3,31,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1935,3,31,3,0,0),DateTime.new(1935,10,27,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1935,10,27,3,30,0),DateTime.new(1936,3,29,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1936,3,29,3,0,0),DateTime.new(1936,11,1,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1936,11,1,3,30,0),DateTime.new(1937,3,28,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1937,3,28,3,0,0),DateTime.new(1937,10,31,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1937,10,31,3,30,0),DateTime.new(1938,3,27,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1938,3,27,3,0,0),DateTime.new(1938,10,30,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1938,10,30,3,30,0),DateTime.new(1939,3,26,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1939,3,26,3,0,0),DateTime.new(1939,10,29,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1939,10,29,3,30,0),DateTime.new(1940,3,31,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1940,3,31,3,0,0),DateTime.new(1940,10,27,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1940,10,27,3,30,0),DateTime.new(1941,3,30,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1941,3,30,3,0,0),DateTime.new(1942,1,1,3,30,0),-12600,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1942,1,1,3,30,0),DateTime.new(1942,12,14,3,0,0),-12600,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1942,12,14,3,0,0),DateTime.new(1943,3,14,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1943,3,14,2,0,0),DateTime.new(1959,5,24,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1959,5,24,3,0,0),DateTime.new(1959,11,15,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1959,11,15,2,0,0),DateTime.new(1960,1,17,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1960,1,17,3,0,0),DateTime.new(1960,3,6,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1960,3,6,2,0,0),DateTime.new(1965,4,4,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1965,4,4,3,0,0),DateTime.new(1965,9,26,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1965,9,26,2,0,0),DateTime.new(1966,4,3,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1966,4,3,3,0,0),DateTime.new(1966,10,31,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1966,10,31,2,0,0),DateTime.new(1967,4,2,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,2,3,0,0),DateTime.new(1967,10,31,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1967,10,31,2,0,0),DateTime.new(1968,5,27,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1968,5,27,3,0,0),DateTime.new(1968,12,2,2,30,0),-10800,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1968,12,2,2,30,0),DateTime.new(1969,5,27,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1969,5,27,3,0,0),DateTime.new(1969,12,2,2,30,0),-10800,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1969,12,2,2,30,0),DateTime.new(1970,5,27,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1970,5,27,3,0,0),DateTime.new(1970,12,2,2,30,0),-10800,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1970,12,2,2,30,0),DateTime.new(1972,4,24,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1972,4,24,3,0,0),DateTime.new(1972,8,15,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1972,8,15,2,0,0),DateTime.new(1974,3,10,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1974,3,10,3,0,0),DateTime.new(1974,12,22,2,30,0),-10800,1800,'UYHST'))
add_period(TimezonePeriod.new(DateTime.new(1974,12,22,2,30,0),DateTime.new(1976,10,1,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1976,10,1,2,0,0),DateTime.new(1977,12,4,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1977,12,4,3,0,0),DateTime.new(1978,4,1,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,1,2,0,0),DateTime.new(1979,10,1,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,1,3,0,0),DateTime.new(1980,5,1,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1980,5,1,2,0,0),DateTime.new(1987,12,14,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1987,12,14,3,0,0),DateTime.new(1988,3,14,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,14,2,0,0),DateTime.new(1988,12,11,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1988,12,11,3,0,0),DateTime.new(1989,3,12,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,12,2,0,0),DateTime.new(1989,10,29,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1989,10,29,3,0,0),DateTime.new(1990,3,4,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1990,3,4,2,0,0),DateTime.new(1990,10,21,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1990,10,21,3,0,0),DateTime.new(1991,3,3,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1991,3,3,2,0,0),DateTime.new(1991,10,27,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1991,10,27,3,0,0),DateTime.new(1992,3,1,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1992,3,1,2,0,0),DateTime.new(1992,10,18,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(1992,10,18,3,0,0),DateTime.new(1993,2,28,2,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(1993,2,28,2,0,0),DateTime.new(2004,9,19,3,0,0),-10800,0,'UYT'))
add_period(TimezonePeriod.new(DateTime.new(2004,9,19,3,0,0),DateTime.new(2005,3,27,4,0,0),-10800,3600,'UYST'))
add_period(TimezonePeriod.new(DateTime.new(2005,3,27,4,0,0),DateTime.new(2045,8,19,20,39,13),-10800,0,'UYT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
