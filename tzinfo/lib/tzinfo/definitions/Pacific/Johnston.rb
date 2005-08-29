require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Johnston < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Johnston')
add_period(TimezonePeriod.new(nil,nil,-36000,0,'HST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
