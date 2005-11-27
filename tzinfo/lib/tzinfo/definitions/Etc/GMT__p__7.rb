require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__7 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT+7')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-25200,0,:'GMT+7')}
end
end
end
end
