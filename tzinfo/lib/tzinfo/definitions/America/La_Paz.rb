require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class La_Paz < Timezone #:nodoc:
setup
set_identifier('America/La_Paz')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,32,36),-16356,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,32,36),DateTime.new(1931,10,15,4,32,36),-16356,0,:'CMT'))
add_period(TimezonePeriod.new(DateTime.new(1931,10,15,4,32,36),DateTime.new(1932,3,21,3,32,36),-16356,3600,:'BOST'))
add_period(TimezonePeriod.new(DateTime.new(1932,3,21,3,32,36),nil,-14400,0,:'BOT'))
end
end
end
end
