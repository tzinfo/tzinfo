require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__3 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-3')
add_period(TimezonePeriod.new(nil,nil,10800,0,'GMT-3'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
