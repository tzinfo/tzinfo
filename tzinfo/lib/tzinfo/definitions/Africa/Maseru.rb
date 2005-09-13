require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Maseru < Timezone #:nodoc:
setup
set_identifier('Africa/Maseru')
add_period(TimezonePeriod.new(nil,DateTime.new(1903,2,28,22,10,0),6600,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1903,2,28,22,10,0),DateTime.new(1943,9,19,0,0,0),7200,0,:'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1943,9,19,0,0,0),DateTime.new(1944,3,18,23,0,0),7200,3600,:'SAST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,18,23,0,0),nil,7200,0,:'SAST'))
end
end
end
end
