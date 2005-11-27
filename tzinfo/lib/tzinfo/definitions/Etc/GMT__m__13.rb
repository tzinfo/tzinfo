require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__13 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-13')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,46800,0,:'GMT-13')}
end
end
end
end
