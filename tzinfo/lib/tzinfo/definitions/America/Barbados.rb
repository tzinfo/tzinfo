require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Barbados < Timezone #:nodoc:
setup
set_identifier('America/Barbados')
add_period(TimezonePeriod.new(nil,DateTime.new(1924,1,1,3,58,28),-14308,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1924,1,1,3,58,28),DateTime.new(1932,1,1,3,58,28),-14308,0,:'BMT'))
add_period(TimezonePeriod.new(DateTime.new(1932,1,1,3,58,28),DateTime.new(1977,6,12,6,0,0),-14400,0,:'AT'))
add_period(TimezonePeriod.new(DateTime.new(1977,6,12,6,0,0),DateTime.new(1977,10,2,5,0,0),-14400,3600,:'ADT'))
add_period(TimezonePeriod.new(DateTime.new(1977,10,2,5,0,0),DateTime.new(1978,4,16,6,0,0),-14400,0,:'AST'))
add_period(TimezonePeriod.new(DateTime.new(1978,4,16,6,0,0),DateTime.new(1978,10,1,5,0,0),-14400,3600,:'ADT'))
add_period(TimezonePeriod.new(DateTime.new(1978,10,1,5,0,0),DateTime.new(1979,4,15,6,0,0),-14400,0,:'AST'))
add_period(TimezonePeriod.new(DateTime.new(1979,4,15,6,0,0),DateTime.new(1979,9,30,5,0,0),-14400,3600,:'ADT'))
add_period(TimezonePeriod.new(DateTime.new(1979,9,30,5,0,0),DateTime.new(1980,4,20,6,0,0),-14400,0,:'AST'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,20,6,0,0),DateTime.new(1980,9,25,5,0,0),-14400,3600,:'ADT'))
add_period(TimezonePeriod.new(DateTime.new(1980,9,25,5,0,0),DateTime.new(2045,9,3,22,38,42),-14400,0,:'AST'))
end
end
end
end
