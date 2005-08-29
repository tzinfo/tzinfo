require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Thimphu < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Thimphu')
add_period(TimezonePeriod.new(nil,DateTime.new(1947,8,14,18,1,24),21516,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1947,8,14,18,1,24),DateTime.new(1987,9,30,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,30,18,30,0),nil,21600,0,'BTT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
