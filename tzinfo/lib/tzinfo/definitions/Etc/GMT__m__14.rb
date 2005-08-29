require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__14 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-14')
add_period(TimezonePeriod.new(nil,nil,50400,0,'GMT-14'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
