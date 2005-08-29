require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Wake < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Wake')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,53,32),39988,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,53,32),nil,43200,0,'WAKT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
