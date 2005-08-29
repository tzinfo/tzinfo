require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Taipei < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Taipei')
add_period(TimezonePeriod.new(nil,DateTime.new(1895,12,31,15,54,0),29160,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1895,12,31,15,54,0),DateTime.new(1945,4,30,16,0,0),28800,0,'CT'))
add_period(TimezonePeriod.new(DateTime.new(1945,4,30,16,0,0),DateTime.new(1945,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,15,0,0),DateTime.new(1946,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1946,4,30,16,0,0),DateTime.new(1946,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1946,9,30,15,0,0),DateTime.new(1947,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1947,4,30,16,0,0),DateTime.new(1947,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1947,9,30,15,0,0),DateTime.new(1948,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1948,4,30,16,0,0),DateTime.new(1948,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1948,9,30,15,0,0),DateTime.new(1949,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1949,4,30,16,0,0),DateTime.new(1949,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1949,9,30,15,0,0),DateTime.new(1950,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,30,16,0,0),DateTime.new(1950,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1950,9,30,15,0,0),DateTime.new(1951,4,30,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,30,16,0,0),DateTime.new(1951,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,30,15,0,0),DateTime.new(1952,2,29,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1952,2,29,16,0,0),DateTime.new(1952,10,31,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1952,10,31,15,0,0),DateTime.new(1953,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1953,3,31,16,0,0),DateTime.new(1953,10,31,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1953,10,31,15,0,0),DateTime.new(1954,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1954,3,31,16,0,0),DateTime.new(1954,10,31,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1954,10,31,15,0,0),DateTime.new(1955,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1955,3,31,16,0,0),DateTime.new(1955,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1955,9,30,15,0,0),DateTime.new(1956,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1956,3,31,16,0,0),DateTime.new(1956,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1956,9,30,15,0,0),DateTime.new(1957,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1957,3,31,16,0,0),DateTime.new(1957,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1957,9,30,15,0,0),DateTime.new(1958,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1958,3,31,16,0,0),DateTime.new(1958,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1958,9,30,15,0,0),DateTime.new(1959,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1959,3,31,16,0,0),DateTime.new(1959,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1959,9,30,15,0,0),DateTime.new(1960,5,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1960,5,31,16,0,0),DateTime.new(1960,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1960,9,30,15,0,0),DateTime.new(1961,5,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1961,5,31,16,0,0),DateTime.new(1961,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1961,9,30,15,0,0),DateTime.new(1974,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1974,3,31,16,0,0),DateTime.new(1974,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1974,9,30,15,0,0),DateTime.new(1975,3,31,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1975,3,31,16,0,0),DateTime.new(1975,9,30,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1975,9,30,15,0,0),DateTime.new(1980,6,29,16,0,0),28800,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1980,6,29,16,0,0),DateTime.new(1980,9,29,15,0,0),28800,3600,'CDT'))
add_period(TimezonePeriod.new(DateTime.new(1980,9,29,15,0,0),DateTime.new(2045,8,19,20,51,16),28800,0,'CST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
