require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kinshasa < Timezone #:nodoc:
setup
set_identifier('Africa/Kinshasa')
add_period(TimezonePeriod.new(nil,DateTime.new(1897,11,8,22,58,48),3672,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1897,11,8,22,58,48),nil,3600,0,:'WAT'))
end
end
end
end
