require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class Mawson < Timezone #:nodoc:
def initialize
  super
set_identifier('Antarctica/Mawson')
add_period(TimezonePeriod.new(nil,DateTime.new(1954,2,13,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1954,2,13,0,0,0),nil,21600,0,'MAWT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
