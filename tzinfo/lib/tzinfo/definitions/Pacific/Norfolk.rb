require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Norfolk < Timezone #:nodoc:
setup
set_identifier('Pacific/Norfolk')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,48,8),40312,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,48,8),DateTime.new(1950,12,31,12,48,0),40320,0,:'NMT'))
add_period(TimezonePeriod.new(DateTime.new(1950,12,31,12,48,0),nil,41400,0,:'NFT'))
end
end
end
end
