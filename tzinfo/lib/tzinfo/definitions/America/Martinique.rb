require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Martinique < Timezone #:nodoc:
def initialize
  super
set_identifier('America/Martinique')
add_period(TimezonePeriod.new(nil,DateTime.new(1890,1,1,4,4,20),-14660,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1890,1,1,4,4,20),DateTime.new(1911,5,1,4,4,20),-14660,0,'FFMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,5,1,4,4,20),DateTime.new(1980,4,6,4,0,0),-14400,0,'AST'))
add_period(TimezonePeriod.new(DateTime.new(1980,4,6,4,0,0),DateTime.new(1980,9,28,3,0,0),-14400,3600,'ADT'))
add_period(TimezonePeriod.new(DateTime.new(1980,9,28,3,0,0),nil,-14400,0,'AST'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
