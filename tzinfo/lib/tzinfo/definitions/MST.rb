require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
class MST < Timezone #:nodoc:
setup
set_identifier('MST')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-25200,0,:'MST')}
end
end
end
