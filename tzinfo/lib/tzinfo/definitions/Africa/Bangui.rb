require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bangui < Timezone #:nodoc:
setup
set_identifier('Africa/Bangui')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,22,45,40),4460,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,22,45,40),nil,3600,0,:'WAT'))
end
end
end
end
