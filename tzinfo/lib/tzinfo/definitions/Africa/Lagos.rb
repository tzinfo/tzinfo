require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lagos < Timezone #:nodoc:
setup
set_identifier('Africa/Lagos')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,8,31,23,46,24),816,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,8,31,23,46,24),nil,3600,0,:'WAT'))
end
end
end
end
