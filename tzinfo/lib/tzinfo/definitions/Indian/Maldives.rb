require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Indian #:nodoc:
class Maldives < Timezone #:nodoc:
def initialize
  super
set_identifier('Indian/Maldives')
add_period(TimezonePeriod.new(nil,DateTime.new(1879,12,31,19,6,0),17640,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1879,12,31,19,6,0),DateTime.new(1959,12,31,19,6,0),17640,0,'MMT'))
add_period(TimezonePeriod.new(DateTime.new(1959,12,31,19,6,0),nil,18000,0,'MVT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
