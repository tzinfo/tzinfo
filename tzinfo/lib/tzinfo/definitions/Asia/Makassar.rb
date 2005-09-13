require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Makassar < Timezone #:nodoc:
setup
set_identifier('Asia/Makassar')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,16,2,24),28656,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,16,2,24),DateTime.new(1932,10,31,16,2,24),28656,0,:'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,31,16,2,24),DateTime.new(1942,2,8,16,0,0),28800,0,:'CIT'))
add_period(TimezonePeriod.new(DateTime.new(1942,2,8,16,0,0),DateTime.new(1945,7,31,15,0,0),32400,0,:'JST'))
add_period(TimezonePeriod.new(DateTime.new(1945,7,31,15,0,0),nil,28800,0,:'CIT'))
end
end
end
end
