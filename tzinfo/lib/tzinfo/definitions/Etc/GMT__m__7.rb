require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__7 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-7')
add_period(TimezonePeriod.new(nil,nil,25200,0,'GMT-7'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
