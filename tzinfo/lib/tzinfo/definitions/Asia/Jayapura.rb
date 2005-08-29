require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Jayapura < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Jayapura')
add_period(TimezonePeriod.new(nil,DateTime.new(1932,10,31,14,37,12),33768,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1932,10,31,14,37,12),DateTime.new(1943,12,31,15,0,0),32400,0,'EIT'))
add_period(TimezonePeriod.new(DateTime.new(1943,12,31,15,0,0),DateTime.new(1963,12,31,14,30,0),34200,0,'CST'))
add_period(TimezonePeriod.new(DateTime.new(1963,12,31,14,30,0),nil,32400,0,'EIT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
