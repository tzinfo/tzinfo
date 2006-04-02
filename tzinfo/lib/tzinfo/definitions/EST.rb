require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
class EST < Timezone #:nodoc:
setup
set_identifier('EST')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,-18000,0,:EST)}
end
end
end
