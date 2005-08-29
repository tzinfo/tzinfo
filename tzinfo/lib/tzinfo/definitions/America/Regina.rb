require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Regina < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Regina')
add_period(TimezonePeriod.new(nil,DateTime.new(1905,9,1,6,58,36),-25116,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1905,9,1,6,58,36),DateTime.new(1918,4,14,9,0,0),-25200,0,'MT'))
add_period(TimezonePeriod.new(DateTime.new(1918,4,14,9,0,0),DateTime.new(1918,10,31,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,31,8,0,0),DateTime.new(1930,5,4,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1930,5,4,7,0,0),DateTime.new(1930,10,5,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1930,10,5,6,0,0),DateTime.new(1931,5,3,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1931,5,3,7,0,0),DateTime.new(1931,10,4,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,4,6,0,0),DateTime.new(1932,5,1,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1932,5,1,7,0,0),DateTime.new(1932,10,2,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,2,6,0,0),DateTime.new(1933,5,7,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1933,5,7,7,0,0),DateTime.new(1933,10,1,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1933,10,1,6,0,0),DateTime.new(1934,5,6,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1934,5,6,7,0,0),DateTime.new(1934,10,7,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1934,10,7,6,0,0),DateTime.new(1937,4,11,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1937,4,11,7,0,0),DateTime.new(1937,10,10,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1937,10,10,6,0,0),DateTime.new(1938,4,10,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1938,4,10,7,0,0),DateTime.new(1938,10,2,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1938,10,2,6,0,0),DateTime.new(1939,4,9,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1939,4,9,7,0,0),DateTime.new(1939,10,8,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1939,10,8,6,0,0),DateTime.new(1940,4,14,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1940,4,14,7,0,0),DateTime.new(1940,10,13,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1940,10,13,6,0,0),DateTime.new(1941,4,13,7,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1941,4,13,7,0,0),DateTime.new(1941,10,12,6,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1941,10,12,6,0,0),DateTime.new(1942,2,9,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,9,9,0,0),DateTime.new(1945,9,30,8,0,0),-25200,3600,'MWT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,8,0,0),DateTime.new(1946,4,14,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1946,4,14,9,0,0),DateTime.new(1946,10,13,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1946,10,13,8,0,0),DateTime.new(1947,4,27,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1947,4,27,9,0,0),DateTime.new(1947,9,28,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1947,9,28,8,0,0),DateTime.new(1948,4,25,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1948,4,25,9,0,0),DateTime.new(1948,9,26,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1948,9,26,8,0,0),DateTime.new(1949,4,24,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1949,4,24,9,0,0),DateTime.new(1949,9,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1949,9,25,8,0,0),DateTime.new(1950,4,30,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,30,9,0,0),DateTime.new(1950,9,24,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1950,9,24,8,0,0),DateTime.new(1951,4,29,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,29,9,0,0),DateTime.new(1951,9,30,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,30,8,0,0),DateTime.new(1952,4,27,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,27,9,0,0),DateTime.new(1952,9,28,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1952,9,28,8,0,0),DateTime.new(1953,4,26,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1953,4,26,9,0,0),DateTime.new(1953,9,27,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1953,9,27,8,0,0),DateTime.new(1954,4,25,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1954,4,25,9,0,0),DateTime.new(1954,9,26,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1954,9,26,8,0,0),DateTime.new(1955,4,24,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1955,4,24,9,0,0),DateTime.new(1955,9,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1955,9,25,8,0,0),DateTime.new(1956,4,29,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1956,4,29,9,0,0),DateTime.new(1956,9,30,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1956,9,30,8,0,0),DateTime.new(1957,4,28,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1957,4,28,9,0,0),DateTime.new(1957,9,29,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1957,9,29,8,0,0),DateTime.new(1959,4,26,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1959,4,26,9,0,0),DateTime.new(1959,10,25,8,0,0),-25200,3600,'MDT'))
add_period(TimezonePeriod.new(DateTime.new(1959,10,25,8,0,0),DateTime.new(1960,4,24,9,0,0),-25200,0,'MST'))
add_period(TimezonePeriod.new(DateTime.new(1960,4,24,9,0,0),nil,-21600,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
