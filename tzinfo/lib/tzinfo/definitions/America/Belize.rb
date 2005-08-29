require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Belize < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Belize')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,4,1,5,52,48),-21168,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,4,1,5,52,48),DateTime.new(1918,10,6,6,0,0),-21600,0,'CT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,6,6,0,0),DateTime.new(1919,2,9,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1919,2,9,5,30,0),DateTime.new(1919,10,5,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1919,10,5,6,0,0),DateTime.new(1920,2,15,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1920,2,15,5,30,0),DateTime.new(1920,10,3,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1920,10,3,6,0,0),DateTime.new(1921,2,13,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1921,2,13,5,30,0),DateTime.new(1921,10,2,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1921,10,2,6,0,0),DateTime.new(1922,2,12,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1922,2,12,5,30,0),DateTime.new(1922,10,8,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1922,10,8,6,0,0),DateTime.new(1923,2,11,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1923,2,11,5,30,0),DateTime.new(1923,10,7,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1923,10,7,6,0,0),DateTime.new(1924,2,10,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1924,2,10,5,30,0),DateTime.new(1924,10,5,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1924,10,5,6,0,0),DateTime.new(1925,2,15,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1925,2,15,5,30,0),DateTime.new(1925,10,4,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1925,10,4,6,0,0),DateTime.new(1926,2,14,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1926,2,14,5,30,0),DateTime.new(1926,10,3,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1926,10,3,6,0,0),DateTime.new(1927,2,13,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1927,2,13,5,30,0),DateTime.new(1927,10,2,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1927,10,2,6,0,0),DateTime.new(1928,2,12,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1928,2,12,5,30,0),DateTime.new(1928,10,7,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1928,10,7,6,0,0),DateTime.new(1929,2,10,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1929,2,10,5,30,0),DateTime.new(1929,10,6,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1929,10,6,6,0,0),DateTime.new(1930,2,9,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1930,2,9,5,30,0),DateTime.new(1930,10,5,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1930,10,5,6,0,0),DateTime.new(1931,2,15,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1931,2,15,5,30,0),DateTime.new(1931,10,4,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,4,6,0,0),DateTime.new(1932,2,14,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1932,2,14,5,30,0),DateTime.new(1932,10,2,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,2,6,0,0),DateTime.new(1933,2,12,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1933,2,12,5,30,0),DateTime.new(1933,10,8,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1933,10,8,6,0,0),DateTime.new(1934,2,11,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1934,2,11,5,30,0),DateTime.new(1934,10,7,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1934,10,7,6,0,0),DateTime.new(1935,2,10,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1935,2,10,5,30,0),DateTime.new(1935,10,6,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1935,10,6,6,0,0),DateTime.new(1936,2,9,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1936,2,9,5,30,0),DateTime.new(1936,10,4,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1936,10,4,6,0,0),DateTime.new(1937,2,14,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1937,2,14,5,30,0),DateTime.new(1937,10,3,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1937,10,3,6,0,0),DateTime.new(1938,2,13,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1938,2,13,5,30,0),DateTime.new(1938,10,2,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1938,10,2,6,0,0),DateTime.new(1939,2,12,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1939,2,12,5,30,0),DateTime.new(1939,10,8,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1939,10,8,6,0,0),DateTime.new(1940,2,11,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1940,2,11,5,30,0),DateTime.new(1940,10,6,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1940,10,6,6,0,0),DateTime.new(1941,2,9,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1941,2,9,5,30,0),DateTime.new(1941,10,5,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1941,10,5,6,0,0),DateTime.new(1942,2,15,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,15,5,30,0),DateTime.new(1942,10,4,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1942,10,4,6,0,0),DateTime.new(1943,2,14,5,30,0),-21600,1800,'CHDT'))
add_period(TimezonePeriod.new(DateTime.new(1943,2,14,5,30,0),DateTime.new(1973,12,5,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1973,12,5,6,0,0),DateTime.new(1974,2,9,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1974,2,9,5,0,0),DateTime.new(1982,12,18,6,0,0),-21600,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1982,12,18,6,0,0),DateTime.new(1983,2,12,5,0,0),-21600,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1983,2,12,5,0,0),DateTime.new(2045,8,19,20,39,18),-21600,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
