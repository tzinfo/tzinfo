require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Toronto'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Eastern < Definitions::America::Toronto #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
