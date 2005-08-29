require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Aden < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Aden')
add_period(TimezonePeriod.new(nil,DateTime.new(1949,12,31,20,59,12),10848,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1949,12,31,20,59,12),nil,10800,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
