require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Brunei < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Brunei')
add_period(TimezonePeriod.new(nil,DateTime.new(1926,2,28,16,20,20),27580,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1926,2,28,16,20,20),DateTime.new(1932,12,31,16,30,0),27000,0,'BNT'))
add_period(TimezonePeriod.new(DateTime.new(1932,12,31,16,30,0),nil,28800,0,'BNT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
