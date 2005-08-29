require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__9 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT+9')
add_period(TimezonePeriod.new(nil,nil,-32400,0,'GMT+9'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
