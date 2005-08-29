require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Antarctica #:nodoc:
class DumontDUrville < Timezone #:nodoc:
def initialize
  super
set_identifier('Antarctica/DumontDUrville')
add_period(TimezonePeriod.new(nil,DateTime.new(1947,1,1,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1947,1,1,0,0,0),DateTime.new(1952,1,13,14,0,0),36000,0,'PMT'))
add_period(TimezonePeriod.new(DateTime.new(1952,1,13,14,0,0),DateTime.new(1956,11,1,0,0,0),0,0,'zzz'))
add_period(TimezonePeriod.new(DateTime.new(1956,11,1,0,0,0),nil,36000,0,'DDUT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
