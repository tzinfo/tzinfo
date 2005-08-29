require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Galapagos < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Galapagos')
add_period(TimezonePeriod.new(nil,DateTime.new(1931,1,1,5,58,24),-21504,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1931,1,1,5,58,24),DateTime.new(1986,1,1,5,0,0),-18000,0,'ECT'))
add_period(TimezonePeriod.new(DateTime.new(1986,1,1,5,0,0),nil,-21600,0,'GALT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
