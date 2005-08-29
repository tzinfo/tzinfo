require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Chicago'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Central < Definitions::America::Chicago #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
