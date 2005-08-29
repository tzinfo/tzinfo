require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Dubai < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Dubai')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,20,18,48),13272,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,20,18,48),nil,14400,0,'GST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
