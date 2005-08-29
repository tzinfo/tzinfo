require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Addis_Ababa < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Addis_Ababa')
add_period(TimezonePeriod.new(nil,DateTime.new(1869,12,31,21,25,12),9288,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1869,12,31,21,25,12),DateTime.new(1936,5,4,21,24,40),9320,0,'ADMT'))
add_period(TimezonePeriod.new(DateTime.new(1936,5,4,21,24,40),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
