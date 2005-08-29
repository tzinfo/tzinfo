require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class UTC < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/UTC')
add_period(TimezonePeriod.new(nil,nil,0,0,'UTC'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
