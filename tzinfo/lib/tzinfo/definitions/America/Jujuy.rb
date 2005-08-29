require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Argentina/Jujuy'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Jujuy < Definitions::America::Argentina::Jujuy #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
