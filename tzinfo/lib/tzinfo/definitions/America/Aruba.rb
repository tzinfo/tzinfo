require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Aruba < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Aruba')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,2,12,4,40,24),-16824,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,2,12,4,40,24),DateTime.new(1965,1,1,4,30,0),-16200,0,'ANT'))
add_period(TimezonePeriod.new(DateTime.new(1965,1,1,4,30,0),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
