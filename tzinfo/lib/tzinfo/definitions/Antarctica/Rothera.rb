require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Rothera < Timezone #:nodoc:
setup
set_identifier('Antarctica/Rothera')
add_unbounded_start_period {TimezonePeriod.new(nil,218246400,0,0,:zzz)}
add_period(1976,12) {TimezonePeriod.new(218246400,nil,-10800,0,:ROTT)}
end
end
end
end
