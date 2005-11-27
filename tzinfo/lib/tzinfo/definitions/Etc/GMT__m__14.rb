require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__14 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-14')
add_unbounded_start_period {TimezonePeriod.new(nil,nil,50400,0,:'GMT-14')}
end
end
end
end
