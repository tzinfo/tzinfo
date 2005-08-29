require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Djibouti < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Djibouti')
add_period(TimezonePeriod.new(nil,DateTime.new(1911,6,30,21,7,24),10356,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1911,6,30,21,7,24),nil,10800,0,'EAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
