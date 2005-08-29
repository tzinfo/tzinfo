require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Port_of_Spain < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Port_of_Spain')
add_period(TimezonePeriod.new(nil,DateTime.new(1912,3,2,4,6,4),-14764,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1912,3,2,4,6,4),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
