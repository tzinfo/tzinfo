require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__11 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-11')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,39600,0,:'GMT-11')}
end
end
end
end
