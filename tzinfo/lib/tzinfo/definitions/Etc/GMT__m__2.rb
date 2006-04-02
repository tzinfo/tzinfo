require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__2 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-2')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,7200,0,:'GMT-2')}
end
end
end
end
