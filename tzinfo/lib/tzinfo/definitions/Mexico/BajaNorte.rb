require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Tijuana'
module TZInfo
module Definitions #:nodoc:
module Mexico #:nodoc:
class BajaNorte < Definitions::America::Tijuana #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
