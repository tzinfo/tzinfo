require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__4 < Timezone #:nodoc:
setup
set_identifier('Etc/GMT-4')
add_period(TimezonePeriod.new(nil,nil,14400,0,:'GMT-4'))
end
end
end
end
