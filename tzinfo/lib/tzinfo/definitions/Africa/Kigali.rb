require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kigali < Timezone #:nodoc:
setup
set_identifier('Africa/Kigali')
add_period(TimezonePeriod.new(nil,DateTime.new(1935,5,31,21,59,44),7216,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1935,5,31,21,59,44),nil,7200,0,:'CAT'))
end
end
end
end
