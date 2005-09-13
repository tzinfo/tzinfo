require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Galapagos < Timezone #:nodoc:
setup
set_identifier('Pacific/Galapagos')
add_period(TimezonePeriod.new(nil,DateTime.new(1931,1,1,5,58,24),-21504,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1931,1,1,5,58,24),DateTime.new(1986,1,1,5,0,0),-18000,0,:'ECT'))
add_period(TimezonePeriod.new(DateTime.new(1986,1,1,5,0,0),nil,-21600,0,:'GALT'))
end
end
end
end
