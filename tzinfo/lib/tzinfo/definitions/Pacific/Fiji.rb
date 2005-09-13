require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Fiji < Timezone #:nodoc:
setup
set_identifier('Pacific/Fiji')
add_period(TimezonePeriod.new(nil,DateTime.new(1915,10,25,12,6,20),42820,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1915,10,25,12,6,20),DateTime.new(1998,10,31,14,0,0),43200,0,:'FJT'))
add_period(TimezonePeriod.new(DateTime.new(1998,10,31,14,0,0),DateTime.new(1999,2,27,14,0,0),43200,3600,:'FJST'))
add_period(TimezonePeriod.new(DateTime.new(1999,2,27,14,0,0),DateTime.new(1999,11,6,14,0,0),43200,0,:'FJT'))
add_period(TimezonePeriod.new(DateTime.new(1999,11,6,14,0,0),DateTime.new(2000,2,26,14,0,0),43200,3600,:'FJST'))
add_period(TimezonePeriod.new(DateTime.new(2000,2,26,14,0,0),DateTime.new(2045,9,3,22,28,13),43200,0,:'FJT'))
end
end
end
end
