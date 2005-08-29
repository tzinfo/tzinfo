require 'tzinfo/timezone'
require 'tzinfo/definitions/America/Puerto_Rico'
module TZInfo
module Definitions #:nodoc:
module SystemV #:nodoc:
class AST4 < Definitions::America::Puerto_Rico #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
end
