require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Mbabane < Timezone #:nodoc:
setup
set_identifier('Africa/Mbabane')
add_period(TimezonePeriod.new(nil,DateTime.new(1903,2,28,21,55,36),7464,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1903,2,28,21,55,36),nil,7200,0,:'SAST'))
end
end
end
end
