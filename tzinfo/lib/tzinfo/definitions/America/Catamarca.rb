require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Catamarca'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Catamarca < Definitions::America::Argentina::Catamarca #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
