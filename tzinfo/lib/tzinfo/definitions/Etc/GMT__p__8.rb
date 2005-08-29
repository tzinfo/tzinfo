require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__8 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT+8')
add_period(TimezonePeriod.new(nil,nil,-28800,0,'GMT+8'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
