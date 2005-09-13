require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lubumbashi < Timezone #:nodoc:
setup
set_identifier('Africa/Lubumbashi')
add_period(TimezonePeriod.new(nil,DateTime.new(1897,11,8,22,10,8),6592,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1897,11,8,22,10,8),nil,7200,0,:'CAT'))
end
end
end
end
