require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dili < Timezone #:nodoc:
setup
set_identifier('Asia/Dili')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,15,37,40),30140,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,15,37,40),DateTime.new(1942,2,21,15,0,0),28800,0,:'TLT'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,21,15,0,0),DateTime.new(1945,7,31,15,0,0),32400,0,:'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,7,31,15,0,0),DateTime.new(1976,5,2,15,0,0),32400,0,:'TLT'))
add_period(TimezonePeriod.new(DateTime.new(1976,5,2,15,0,0),DateTime.new(2000,9,16,16,0,0),28800,0,:'CIT'))
add_period(TimezonePeriod.new(DateTime.new(2000,9,16,16,0,0),nil,32400,0,:'TLT'))
end
end
end
end
