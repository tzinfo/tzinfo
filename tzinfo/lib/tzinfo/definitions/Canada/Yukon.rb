require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Whitehorse'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Yukon < Definitions::America::Whitehorse #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
