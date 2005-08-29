require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Cordoba'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Rosario < Definitions::America::Argentina::Cordoba #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
