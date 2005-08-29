require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bahrain < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Bahrain')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,20,37,40),12140,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,20,37,40),DateTime.new(1972,5,31,20,0,0),14400,0,'GST'))
add_period(TimezonePeriod.new(DateTime.new(1972,5,31,20,0,0),nil,10800,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
