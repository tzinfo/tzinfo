require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT < Timezone #:nodoc:
setup
set_identifier('Etc/GMT')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,0,0,:'GMT')}
end
end
end
end
