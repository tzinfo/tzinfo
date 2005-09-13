require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Tarawa < Timezone #:nodoc:
setup
set_identifier('Pacific/Tarawa')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,27,56),41524,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,27,56),nil,43200,0,:'GILT'))
end
end
end
end
