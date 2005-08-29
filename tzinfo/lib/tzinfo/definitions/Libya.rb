require 'tzinfo/timezone'
require 'tzinfo/definitions/Africa/Tripoli'
module TZInfo
module Definitions #:nodoc:
class Libya < Definitions::Africa::Tripoli #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
