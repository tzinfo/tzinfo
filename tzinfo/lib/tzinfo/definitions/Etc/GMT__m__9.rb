require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__9 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-9')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,32400,0,:'GMT-9')}
end
end
end
end
