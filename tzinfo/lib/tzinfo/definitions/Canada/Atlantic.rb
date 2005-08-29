require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Halifax'
module TZInfo
module Definitions #:nodoc:
module Canada #:nodoc:
class Atlantic < Definitions::America::Halifax #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
