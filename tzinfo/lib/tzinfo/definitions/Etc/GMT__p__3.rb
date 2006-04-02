require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__3 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT+3')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-10800,0,:'GMT+3')}
end
end
end
end
