require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Antananarivo < Timezone #:nodoc:
setup
set_identifier('Indian/Antananarivo')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,6,30,20,49,56),11404,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,6,30,20,49,56),DateTime.new(1954,2,27,20,0,0),10800,0,:'EAT'))
add_period(TimezonePeriod.new(DateTime.new(1954,2,27,20,0,0),DateTime.new(1954,5,29,20,0,0),10800,3600,:'EAST'))
add_period(TimezonePeriod.new(DateTime.new(1954,5,29,20,0,0),nil,10800,0,:'EAT'))
end
end
end
end
