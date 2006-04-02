require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Johnston < Timezone #:nodoc:
setup
set_identifier('Pacific/Johnston')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-36000,0,:HST)}
end
end
end
end
