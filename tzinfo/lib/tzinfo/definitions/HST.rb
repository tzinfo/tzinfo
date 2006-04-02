require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
class HST < Timezone #:nodoc:
setup
set_identifier('HST')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-36000,0,:HST)}
end
end
end
