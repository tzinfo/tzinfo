require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Phoenix'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class MST7 < Definitions::America::Phoenix #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
