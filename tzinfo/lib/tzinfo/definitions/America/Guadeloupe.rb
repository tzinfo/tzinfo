require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Guadeloupe < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Guadeloupe')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,6,8,4,6,8),-14768,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,6,8,4,6,8),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
