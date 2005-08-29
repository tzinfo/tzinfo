require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Detroit'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Michigan < Definitions::America::Detroit #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
