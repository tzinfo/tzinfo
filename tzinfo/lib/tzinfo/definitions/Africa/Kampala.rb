require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Kampala < Timezone #:nodoc:
setup
set_identifier('Africa/Kampala')
add_period(TimezonePeriod.new(nil,DateTime.new(1928,6,30,21,50,20),7780,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1928,6,30,21,50,20),DateTime.new(1929,12,31,21,0,0),10800,0,:'EAT'))
add_period(TimezonePeriod.new(DateTime.new(1929,12,31,21,0,0),DateTime.new(1947,12,31,21,30,0),9000,0,:'BEAT'))
add_period(TimezonePeriod.new(DateTime.new(1947,12,31,21,30,0),DateTime.new(1956,12,31,21,15,15),9885,0,:'BEAUT'))
add_period(TimezonePeriod.new(DateTime.new(1956,12,31,21,15,15),nil,10800,0,:'EAT'))
end
end
end
end
