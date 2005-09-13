require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Dar_es_Salaam < Timezone #:nodoc:
setup
set_identifier('Africa/Dar_es_Salaam')
add_period(TimezonePeriod.new(nil,DateTime.new(1930,12,31,21,22,52),9428,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1930,12,31,21,22,52),DateTime.new(1947,12,31,21,0,0),10800,0,:'EAT'))
add_period(TimezonePeriod.new(DateTime.new(1947,12,31,21,0,0),DateTime.new(1960,12,31,21,15,15),9885,0,:'BEAUT'))
add_period(TimezonePeriod.new(DateTime.new(1960,12,31,21,15,15),nil,10800,0,:'EAT'))
end
end
end
end
