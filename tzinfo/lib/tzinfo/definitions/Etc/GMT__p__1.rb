require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__1 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT+1')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-3600,0,:'GMT+1')}
end
end
end
end
