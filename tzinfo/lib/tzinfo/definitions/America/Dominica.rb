require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Dominica < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Dominica')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,7,1,4,6,36),-14736,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,7,1,4,6,36),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
