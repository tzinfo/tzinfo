require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__6 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-6')
add_period(TimezonePeriod.new(nil,nil,21600,0,'GMT-6'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
