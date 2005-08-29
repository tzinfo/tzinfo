require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Monrovia < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Monrovia')
add_period(TimezonePeriod.new(nil,DateTime.new(1882,1,1,0,43,8),-2588,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1882,1,1,0,43,8),DateTime.new(1919,3,1,0,43,8),-2588,0,'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,3,1,0,43,8),DateTime.new(1972,5,1,0,44,30),-2670,0,'LRT'))
add_period(TimezonePeriod.new(DateTime.new(1972,5,1,0,44,30),nil,0,0,'GMT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
