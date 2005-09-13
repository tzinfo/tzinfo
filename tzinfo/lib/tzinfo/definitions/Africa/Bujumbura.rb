require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Bujumbura < Timezone #:nodoc:
setup
set_identifier('Africa/Bujumbura')
add_period(TimezonePeriod.new(nil,DateTime.new(1889,12,31,22,2,32),7048,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1889,12,31,22,2,32),nil,7200,0,:'CAT'))
end
end
end
end
