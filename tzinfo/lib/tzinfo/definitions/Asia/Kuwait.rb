require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Kuwait < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Kuwait')
add_period(TimezonePeriod.new(nil,DateTime.new(1949,12,31,20,48,4),11516,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,31,20,48,4),nil,10800,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
