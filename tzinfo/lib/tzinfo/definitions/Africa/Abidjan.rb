require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Abidjan < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Abidjan')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,1,1,0,16,8),-968,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,1,1,0,16,8),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
