require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Lusaka < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Lusaka')
add_period(TimezonePeriod.new(nil,DateTime.new(1903,2,28,22,6,52),6788,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1903,2,28,22,6,52),nil,7200,0,'CAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
