require 'tzinfo/timezone'
require 'tzinfo/definitions/Pacific/Easter'
module TZInfo
module Definitions #:nodoc:
module Chile #:nodoc:
class EasterIsland < Definitions::Pacific::Easter #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
