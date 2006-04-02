require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__5 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-5')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,18000,0,:'GMT-5')}
end
end
end
end
