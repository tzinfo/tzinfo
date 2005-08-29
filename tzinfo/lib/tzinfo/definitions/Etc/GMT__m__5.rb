require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__5 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-5')
add_period(TimezonePeriod.new(nil,nil,18000,0,'GMT-5'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
