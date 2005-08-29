require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Kerguelen < Timezone #:nodoc:
def initialize
  super
set_identifier('Indian/Kerguelen')
add_period(TimezonePeriod.new(nil,DateTime.new(1950,1,1,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1950,1,1,0,0,0),nil,18000,0,'TFT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
