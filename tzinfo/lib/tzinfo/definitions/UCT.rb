require 'tzinfo/timezone'
require 'tzinfo/definitions/Etc/UCT'
module TZInfo
module Definitions #:nodoc:
class UCT < Definitions::Etc::UCT #:nodoc:
@@instance = new
def self.instance
   @@instance
end
end
end
end
