require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class UCT < Timezone #:nodoc:
setup
set_identifier('Etc/UCT')
add_period(TimezonePeriod.new(nil,nil,0,0,:'UCT'))
end
end
end
end
