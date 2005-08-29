require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Halifax'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class AST4ADT < Definitions::America::Halifax #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
