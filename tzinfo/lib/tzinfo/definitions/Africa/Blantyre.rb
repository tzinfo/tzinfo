require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Blantyre < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Blantyre')
add_period(TimezonePeriod.new(nil,DateTime.new(1903,2,28,21,40,0),8400,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1903,2,28,21,40,0),nil,7200,0,'CAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
