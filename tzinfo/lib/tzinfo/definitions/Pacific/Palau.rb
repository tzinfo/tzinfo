require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Palau < Timezone #:nodoc:
setup
set_identifier('Pacific/Palau')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,15,2,4),32276,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,15,2,4),nil,32400,0,:'PWT'))
end
end
end
end
