require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Montserrat < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Montserrat')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,9,52),-14932,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,9,52),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
