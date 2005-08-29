require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__10 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-10')
add_period(TimezonePeriod.new(nil,nil,36000,0,'GMT-10'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
