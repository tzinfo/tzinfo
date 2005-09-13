require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Sao_Tome < Timezone #:nodoc:
setup
set_identifier('Africa/Sao_Tome')
add_period(TimezonePeriod.new(nil,DateTime.new(1883,12,31,23,33,4),1616,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1883,12,31,23,33,4),DateTime.new(1912,1,1,0,36,32),-2192,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,0,36,32),nil,0,0,:'GMT'))
end
end
end
end
