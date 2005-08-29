require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__12 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-12')
add_period(TimezonePeriod.new(nil,nil,43200,0,'GMT-12'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
