require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kabul < Timezone #:nodoc:
setup
set_identifier('Asia/Kabul')
add_period(TimezonePeriod.new(nil,DateTime.new(1889,12,31,19,23,12),16608,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,19,23,12),DateTime.new(1944,12,31,20,0,0),14400,0,:'AFT'))
add_period(TimezonePeriod.new(DateTime.new(1944,12,31,20,0,0),nil,16200,0,:'AFT'))
end
end
end
end
