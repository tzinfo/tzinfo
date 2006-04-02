require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__8 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT+8')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-28800,0,:'GMT+8')}
end
end
end
end
