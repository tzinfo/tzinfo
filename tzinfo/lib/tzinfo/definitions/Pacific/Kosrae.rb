require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kosrae < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Kosrae')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,13,8,4),39116,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,13,8,4),DateTime.new(1969,9,30,13,0,0),39600,0,'KOST'))
add_period(TimezonePeriod.new(DateTime.new(1969,9,30,13,0,0),DateTime.new(1998,12,31,12,0,0),43200,0,'KOST'))
add_period(TimezonePeriod.new(DateTime.new(1998,12,31,12,0,0),nil,39600,0,'KOST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
