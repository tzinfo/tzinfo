require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__11 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-11')
add_period(TimezonePeriod.new(nil,nil,39600,0,'GMT-11'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
