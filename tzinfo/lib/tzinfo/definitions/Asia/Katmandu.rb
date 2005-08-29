require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Katmandu < Timezone #:nodoc:
def initialize
  super
set_identifier('Asia/Katmandu')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,18,18,44),20476,0,'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,18,18,44),DateTime.new(1985,12,31,18,30,0),19800,0,'IST'))
add_period(TimezonePeriod.new(DateTime.new(1985,12,31,18,30,0),nil,20700,0,'NPT'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
