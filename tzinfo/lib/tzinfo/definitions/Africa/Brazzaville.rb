require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Brazzaville < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Brazzaville')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,12,31,22,58,52),3668,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,12,31,22,58,52),nil,3600,0,'WAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
