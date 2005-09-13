require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class St_Thomas < Timezone #:nodoc:
setup
set_identifier('America/St_Thomas')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,19,44),-15584,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,19,44),nil,-14400,0,:'AST'))
end
end
end
end
