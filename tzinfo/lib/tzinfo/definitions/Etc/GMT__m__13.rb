require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class GMT__m__13 < Timezone #:nodoc:
def initialize
  super
set_identifier('Etc/GMT-13')
add_period(TimezonePeriod.new(nil,nil,46800,0,'GMT-13'))
end
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
