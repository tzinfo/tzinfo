require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Dawson_Creek < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Dawson_Creek')
add_period(TimezonePeriod.new(nil,DateTime.new(1884,1,1,8,0,56),-28856,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1884,1,1,8,0,56),DateTime.new(1918,4,14,10,0,0),-28800,0,'PT'))
add_period(TimezonePeriod.new(DateTime.new(1918,4,14,10,0,0),DateTime.new(1918,10,31,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1918,10,31,9,0,0),DateTime.new(1942,2,9,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,9,10,0,0),DateTime.new(1945,9,30,9,0,0),-28800,3600,'PWT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,9,0,0),DateTime.new(1947,1,1,8,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1947,1,1,8,0,0),DateTime.new(1947,4,27,10,0,0),-28800,0,'PT'))
add_period(TimezonePeriod.new(DateTime.new(1947,4,27,10,0,0),DateTime.new(1947,9,28,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1947,9,28,9,0,0),DateTime.new(1948,4,25,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1948,4,25,10,0,0),DateTime.new(1948,9,26,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1948,9,26,9,0,0),DateTime.new(1949,4,24,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1949,4,24,10,0,0),DateTime.new(1949,9,25,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1949,9,25,9,0,0),DateTime.new(1950,4,30,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1950,4,30,10,0,0),DateTime.new(1950,9,24,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1950,9,24,9,0,0),DateTime.new(1951,4,29,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1951,4,29,10,0,0),DateTime.new(1951,9,30,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1951,9,30,9,0,0),DateTime.new(1952,4,27,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1952,4,27,10,0,0),DateTime.new(1952,9,28,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1952,9,28,9,0,0),DateTime.new(1953,4,26,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1953,4,26,10,0,0),DateTime.new(1953,9,27,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1953,9,27,9,0,0),DateTime.new(1954,4,25,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1954,4,25,10,0,0),DateTime.new(1954,9,26,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1954,9,26,9,0,0),DateTime.new(1955,4,24,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1955,4,24,10,0,0),DateTime.new(1955,9,25,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1955,9,25,9,0,0),DateTime.new(1956,4,29,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1956,4,29,10,0,0),DateTime.new(1956,9,30,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1956,9,30,9,0,0),DateTime.new(1957,4,28,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1957,4,28,10,0,0),DateTime.new(1957,9,29,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1957,9,29,9,0,0),DateTime.new(1958,4,27,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1958,4,27,10,0,0),DateTime.new(1958,9,28,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1958,9,28,9,0,0),DateTime.new(1959,4,26,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1959,4,26,10,0,0),DateTime.new(1959,9,27,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1959,9,27,9,0,0),DateTime.new(1960,4,24,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1960,4,24,10,0,0),DateTime.new(1960,9,25,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1960,9,25,9,0,0),DateTime.new(1961,4,30,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1961,4,30,10,0,0),DateTime.new(1961,9,24,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1961,9,24,9,0,0),DateTime.new(1962,4,29,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1962,4,29,10,0,0),DateTime.new(1962,10,28,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1962,10,28,9,0,0),DateTime.new(1963,4,28,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1963,4,28,10,0,0),DateTime.new(1963,10,27,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1963,10,27,9,0,0),DateTime.new(1964,4,26,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1964,4,26,10,0,0),DateTime.new(1964,10,25,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1964,10,25,9,0,0),DateTime.new(1965,4,25,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1965,4,25,10,0,0),DateTime.new(1965,10,31,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1965,10,31,9,0,0),DateTime.new(1966,4,24,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1966,4,24,10,0,0),DateTime.new(1966,10,30,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1966,10,30,9,0,0),DateTime.new(1967,4,30,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,30,10,0,0),DateTime.new(1967,10,29,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1967,10,29,9,0,0),DateTime.new(1968,4,28,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1968,4,28,10,0,0),DateTime.new(1968,10,27,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1968,10,27,9,0,0),DateTime.new(1969,4,27,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1969,4,27,10,0,0),DateTime.new(1969,10,26,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1969,10,26,9,0,0),DateTime.new(1970,4,26,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1970,4,26,10,0,0),DateTime.new(1970,10,25,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1970,10,25,9,0,0),DateTime.new(1971,4,25,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1971,4,25,10,0,0),DateTime.new(1971,10,31,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,31,9,0,0),DateTime.new(1972,4,30,10,0,0),-28800,0,'PST'))
add_period(TimezonePeriod.new(DateTime.new(1972,4,30,10,0,0),DateTime.new(1972,8,30,9,0,0),-28800,3600,'PDT'))
add_period(TimezonePeriod.new(DateTime.new(1972,8,30,9,0,0),nil,-25200,0,'MST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
