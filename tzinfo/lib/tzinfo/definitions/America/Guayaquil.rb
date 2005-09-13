require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guayaquil < Timezone #:nodoc:
setup
set_identifier('America/Guayaquil')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,5,19,20),-19160,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,5,19,20),DateTime.new(1931,1,1,5,14,0),-18840,0,:'QMT'))
add_period(TimezonePeriod.new(DateTime.new(1931,1,1,5,14,0),nil,-18000,0,:'ECT'))
end
end
end
end
