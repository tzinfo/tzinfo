require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Enderbury < Timezone #:nodoc:
setup
set_identifier('Pacific/Enderbury')
add_period(TimezonePeriod.new(nil,DateTime.new(1901,1,1,11,24,20),-41060,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1901,1,1,11,24,20),DateTime.new(1979,10,1,12,0,0),-43200,0,:'PHOT'))
add_period(TimezonePeriod.new(DateTime.new(1979,10,1,12,0,0),DateTime.new(1995,1,1,11,0,0),-39600,0,:'PHOT'))
add_period(TimezonePeriod.new(DateTime.new(1995,1,1,11,0,0),nil,46800,0,:'PHOT'))
end
end
end
end
