require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UTC'
module TZInfo
module Definitions #:nodoc:
module Etc #:nodoc:
class Universal < Definitions::Etc::UTC #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
