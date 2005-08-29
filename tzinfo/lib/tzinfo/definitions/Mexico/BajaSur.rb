require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Mazatlan'
module TZInfo
module Definitions #:nodoc:
module Mexico #:nodoc:
class BajaSur < Definitions::America::Mazatlan #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
