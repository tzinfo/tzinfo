require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Santiago'
module TZInfo
module Definitions #:nodoc:
module Chile #:nodoc:
class Continental < Definitions::America::Santiago #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
