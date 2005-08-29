require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Kentucky/Louisville'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Louisville < Definitions::America::Kentucky::Louisville #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
