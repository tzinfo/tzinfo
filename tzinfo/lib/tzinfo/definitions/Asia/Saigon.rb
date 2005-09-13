require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Saigon < Timezone #:nodoc:
setup
set_identifier('Asia/Saigon')
add_period(TimezonePeriod.new(nil,DateTime.new(1906,6,8,16,53,20),25600,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1906,6,8,16,53,20),DateTime.new(1911,3,10,16,54,40),25580,0,:'SMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,3,10,16,54,40),DateTime.new(1912,4,30,17,0,0),25200,0,:'ICT'))
add_period(TimezonePeriod.new(DateTime.new(1912,4,30,17,0,0),DateTime.new(1931,4,30,16,0,0),28800,0,:'ICT'))
add_period(TimezonePeriod.new(DateTime.new(1931,4,30,16,0,0),nil,25200,0,:'ICT'))
end
end
end
end
