require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT')
add_period(TimezonePeriod.new(nil,nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
