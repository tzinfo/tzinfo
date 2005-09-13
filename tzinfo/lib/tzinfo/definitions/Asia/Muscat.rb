require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Muscat < Timezone #:nodoc:
setup
set_identifier('Asia/Muscat')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,20,5,40),14060,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,20,5,40),nil,14400,0,:'GST'))
end
end
end
end
