require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Mendoza'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Mendoza < Definitions::America::Argentina::Mendoza #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
