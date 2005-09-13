require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Macau < Timezone #:nodoc:
setup
set_identifier('Asia/Macau')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,16,25,40),27260,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,16,25,40),DateTime.new(1961,3,18,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1961,3,18,19,30,0),DateTime.new(1961,11,4,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1961,11,4,18,30,0),DateTime.new(1962,3,17,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1962,3,17,19,30,0),DateTime.new(1962,11,3,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1962,11,3,18,30,0),DateTime.new(1963,3,16,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1963,3,16,16,0,0),DateTime.new(1963,11,2,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1963,11,2,18,30,0),DateTime.new(1964,3,21,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1964,3,21,19,30,0),DateTime.new(1964,10,31,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1964,10,31,18,30,0),DateTime.new(1965,3,20,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1965,3,20,16,0,0),DateTime.new(1965,10,30,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1965,10,30,15,0,0),DateTime.new(1966,4,16,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1966,4,16,19,30,0),DateTime.new(1966,10,15,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1966,10,15,18,30,0),DateTime.new(1967,4,15,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1967,4,15,19,30,0),DateTime.new(1967,10,21,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1967,10,21,18,30,0),DateTime.new(1968,4,20,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1968,4,20,19,30,0),DateTime.new(1968,10,19,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1968,10,19,18,30,0),DateTime.new(1969,4,19,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1969,4,19,19,30,0),DateTime.new(1969,10,18,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1969,10,18,18,30,0),DateTime.new(1970,4,18,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1970,4,18,19,30,0),DateTime.new(1970,10,17,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1970,10,17,18,30,0),DateTime.new(1971,4,17,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1971,4,17,19,30,0),DateTime.new(1971,10,16,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1971,10,16,18,30,0),DateTime.new(1972,4,15,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1972,4,15,16,0,0),DateTime.new(1972,10,14,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1972,10,14,15,0,0),DateTime.new(1973,4,14,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1973,4,14,16,0,0),DateTime.new(1973,10,20,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1973,10,20,15,0,0),DateTime.new(1974,4,20,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1974,4,20,16,0,0),DateTime.new(1974,10,19,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1974,10,19,18,30,0),DateTime.new(1975,4,19,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1975,4,19,19,30,0),DateTime.new(1975,10,18,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1975,10,18,18,30,0),DateTime.new(1976,4,17,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1976,4,17,19,30,0),DateTime.new(1976,10,16,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1976,10,16,18,30,0),DateTime.new(1977,4,16,19,30,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1977,4,16,19,30,0),DateTime.new(1977,10,15,18,30,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1977,10,15,18,30,0),DateTime.new(1978,4,15,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,15,16,0,0),DateTime.new(1978,10,14,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1978,10,14,15,0,0),DateTime.new(1979,4,14,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1979,4,14,16,0,0),DateTime.new(1979,10,20,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,20,15,0,0),DateTime.new(1980,4,19,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,19,16,0,0),DateTime.new(1980,10,18,15,0,0),28800,3600,:'MOST'))
add_period(TimezonePeriod.new(DateTime.new(1980,10,18,15,0,0),DateTime.new(1999,12,19,16,0,0),28800,0,:'MOT'))
add_period(TimezonePeriod.new(DateTime.new(1999,12,19,16,0,0),DateTime.new(2045,9,3,22,38,25),28800,0,:'CT'))
end
end
end
end
