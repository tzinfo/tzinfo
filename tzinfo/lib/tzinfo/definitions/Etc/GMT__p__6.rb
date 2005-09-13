require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__6 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT+6')
add_period(TimezonePeriod.new(nil,nil,-21600,0,:'GMT+6'))
end
end
end
end
