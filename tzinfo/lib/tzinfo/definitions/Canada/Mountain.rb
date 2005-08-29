require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Edmonton'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Mountain < Definitions::America::Edmonton #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
