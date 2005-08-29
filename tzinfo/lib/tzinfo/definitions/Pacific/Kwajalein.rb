require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Kwajalein < Timezone #:nodoc:
def initialize
  super
set_identifier('Pacific/Kwajalein')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,12,31,12,50,40),40160,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,12,31,12,50,40),DateTime.new(1969,9,30,13,0,0),39600,0,'MHT'))
add_period(TimezonePeriod.new(DateTime.new(1969,9,30,13,0,0),DateTime.new(1993,8,20,12,0,0),-43200,0,'KWAT'))
add_period(TimezonePeriod.new(DateTime.new(1993,8,20,12,0,0),nil,43200,0,'MHT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
