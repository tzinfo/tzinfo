require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class UTC < Timezone #:nodoc:
setup
set_identifier('Etc/UTC')
add_period(TimezonePeriod.new(nil,nil,0,0,:'UTC'))
end
end
end
end
