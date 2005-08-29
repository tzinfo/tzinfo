require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Gaborone < Timezone #:nodoc:
def initialize
  super
set_identifier('Africa/Gaborone')
add_period(TimezonePeriod.new(nil,DateTime.new(1884,12,31,22,16,20),6220,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1884,12,31,22,16,20),DateTime.new(1943,9,19,0,0,0),7200,0,'CAT'))
add_period(TimezonePeriod.new(DateTime.new(1943,9,19,0,0,0),DateTime.new(1944,3,18,23,0,0),7200,3600,'CAST'))
add_period(TimezonePeriod.new(DateTime.new(1944,3,18,23,0,0),nil,7200,0,'CAT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
