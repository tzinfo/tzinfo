require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Ndjamena < Timezone #:nodoc:
setup
set_identifier('Africa/Ndjamena')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,22,59,48),3612,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,22,59,48),DateTime.new(1979,10,13,23,0,0),3600,0,:'WAT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,13,23,0,0),DateTime.new(1980,3,7,22,0,0),3600,3600,:'WAST'))
add_period(TimezonePeriod.new(DateTime.new(1980,3,7,22,0,0),nil,3600,0,:'WAT'))
end
end
end
end
