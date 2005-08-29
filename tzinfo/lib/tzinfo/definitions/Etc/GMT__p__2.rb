require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__2 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT+2')
add_period(TimezonePeriod.new(nil,nil,-7200,0,'GMT+2'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
