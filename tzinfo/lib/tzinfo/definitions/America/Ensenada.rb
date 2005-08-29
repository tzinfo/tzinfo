require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Tijuana'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Ensenada < Definitions::America::Tijuana #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
