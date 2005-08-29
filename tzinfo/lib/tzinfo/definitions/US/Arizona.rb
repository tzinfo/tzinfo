require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Phoenix'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Arizona < Definitions::America::Phoenix #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
