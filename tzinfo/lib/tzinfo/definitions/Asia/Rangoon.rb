require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Rangoon < Timezone #:nodoc:
setup
set_identifier('Asia/Rangoon')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,17,35,20),23080,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,17,35,20),DateTime.new(1919,12,31,17,35,24),23076,0,:'RMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,17,35,24),DateTime.new(1942,4,30,17,30,0),23400,0,:'BURT'))
add_period(TimezonePeriod.new(DateTime.new(1942,4,30,17,30,0),DateTime.new(1945,5,2,15,0,0),32400,0,:'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,5,2,15,0,0),nil,23400,0,:'MMT'))
end
end
end
end
