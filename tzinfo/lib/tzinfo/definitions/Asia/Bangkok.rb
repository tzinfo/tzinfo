require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bangkok < Timezone #:nodoc:
setup
set_identifier('Asia/Bangkok')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,17,17,56),24124,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,17,17,56),DateTime.new(1920,3,31,17,17,56),24124,0,:'BMT'))
add_period(TimezonePeriod.new(DateTime.new(1920,3,31,17,17,56),nil,25200,0,:'ICT'))
end
end
end
end
