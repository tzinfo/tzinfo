require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__1 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-1')
add_period(TimezonePeriod.new(nil,nil,3600,0,'GMT-1'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
