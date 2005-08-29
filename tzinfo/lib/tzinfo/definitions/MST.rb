require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Phoenix'
module TZInfo
module Definitions #:nodoc:
class MST < Definitions::America::Phoenix #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
