require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__p__4 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT+4')
add_period(TimezonePeriod.new(nil,nil,-14400,0,'GMT+4'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
