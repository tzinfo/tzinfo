require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Havana'
module TZInfo
module Definitions #:nodoc:
class Cuba < Definitions::America::Havana #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
