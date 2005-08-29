require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Anchorage'
module TZInfo
module Definitions #:nodoc:
module US #:nodoc:
class Alaska < Definitions::America::Anchorage #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
