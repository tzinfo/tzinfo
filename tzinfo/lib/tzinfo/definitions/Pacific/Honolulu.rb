require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Honolulu < Timezone #:nodoc:
setup
set_identifier('Pacific/Honolulu')
add_period(TimezonePeriod.new(nil,DateTime.new(1900,1,1,22,31,26),-37886,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1900,1,1,22,31,26),DateTime.new(1933,4,30,12,30,0),-37800,0,:'HST'))
add_period(TimezonePeriod.new(DateTime.new(1933,4,30,12,30,0),DateTime.new(1933,5,21,11,30,0),-37800,3600,:'HDT'))
add_period(TimezonePeriod.new(DateTime.new(1933,5,21,11,30,0),DateTime.new(1945,9,30,11,30,0),-37800,3600,:'HT'))
add_period(TimezonePeriod.new(DateTime.new(1945,9,30,11,30,0),DateTime.new(1947,6,8,12,30,0),-37800,0,:'HST'))
add_period(TimezonePeriod.new(DateTime.new(1947,6,8,12,30,0),nil,-36000,0,:'HST'))
end
end
end
end
