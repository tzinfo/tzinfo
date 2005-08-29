require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
class UTC < Definitions::Etc::UTC #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
