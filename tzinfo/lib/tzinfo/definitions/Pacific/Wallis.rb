require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Wallis < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Wallis')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,11,44,40),44120,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,11,44,40),nil,43200,0,'WFT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
