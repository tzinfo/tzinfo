require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Vancouver'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Pacific < Definitions::America::Vancouver #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
