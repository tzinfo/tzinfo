require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Chicago'
module TZInfo
module Definitions #:nodoc:
class CST6CDT < Definitions::America::Chicago #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
